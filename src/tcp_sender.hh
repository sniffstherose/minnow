#pragma once

#include "byte_stream.hh"
#include "tcp_receiver_message.hh"
#include "tcp_sender_message.hh"

#include <cstdint>
#include <functional>
#include <list>
#include <memory>
#include <optional>
#include <queue>

/*
  计时器辅助类：
  成员变量：
    - RTO
    - 过去了多久时间
    - 是否启用计时器
  成员函数：
    - is_expired()（是否过期）
    - is_active()（是否启用）
    - active()（设置active）
    - timeout()（将RTO乘2）
    - reset()（重置计时器）
    - tick()（返回距离上次调用过了多久）
*/
class RetransmissionTimer
{
public:
  RetransmissionTimer( uint64_t RTO ) : RTO_( RTO ) {}
  bool is_expired() const noexcept { return is_active_ && time_passed_ >= RTO_; }
  bool is_active() const noexcept { return is_active_; }
  RetransmissionTimer& active() noexcept;
  RetransmissionTimer& timeout() noexcept;
  RetransmissionTimer& reset() noexcept;
  RetransmissionTimer& tick( uint64_t ms_since_last_tick ) noexcept;

private:
  uint64_t RTO_;
  uint64_t time_passed_ {};
  bool is_active_ {};
};

class TCPSender
{
public:
  /* Construct TCP sender with given default Retransmission Timeout and possible ISN */
  TCPSender( ByteStream&& input, Wrap32 isn, uint64_t initial_RTO_ms )
    : input_( std::move( input ) ), isn_( isn ), initial_RTO_ms_( initial_RTO_ms ), timer_( initial_RTO_ms )
  {}

  /* Generate an empty TCPSenderMessage */
  TCPSenderMessage make_empty_message() const;

  /* Receive and process a TCPReceiverMessage from the peer's receiver */
  void receive( const TCPReceiverMessage& msg );

  /* Type of the `transmit` function that the push and tick methods can use to send messages */
  using TransmitFunction = std::function<void( const TCPSenderMessage& )>;

  /* Push bytes from the outbound stream */
  void push( const TransmitFunction& transmit );

  /* Time has passed by the given # of milliseconds since the last time the tick() method was called */
  void tick( uint64_t ms_since_last_tick, const TransmitFunction& transmit );

  // Accessors
  uint64_t sequence_numbers_in_flight() const;  // How many sequence numbers are outstanding?
  uint64_t consecutive_retransmissions() const; // How many consecutive *re*transmissions have happened?
  Writer& writer() { return input_.writer(); }
  const Writer& writer() const { return input_.writer(); }

  // Access input stream reader, but const-only (can't read from outside)
  const Reader& reader() const { return input_.reader(); }

private:
  // Variables initialized in constructor
  ByteStream input_;  // 接受接收方消息的ByteStream
  Wrap32 isn_;
  uint64_t initial_RTO_ms_;

  TCPSenderMessage make_message( uint64_t seqno, std::string payload, bool SYN, bool FIN = false ) const;

  /*
    需要添加的变量：
    - 窗口大小
    - 已确认的序列
    - 待发送的下一字节
    - 未完成字节缓冲区
    - SYN和FIN标志位，以及是否发送过SYN和FIN的标志位
    - 计时器
    - 重传次数
    - 未完成的序列号总数
  */
  uint16_t wnd_size_ { 1 }; // 接收方窗口大小，初始值假定1
  uint64_t acked_seqno_ {}; // 确认到哪了
  uint64_t next_seqno_ {};  // 待发送的下一字节
  bool syn_flag_ {}, fin_flag_ {}, sent_syn_ {}, sent_fin_ {};

  std::queue<TCPSenderMessage> outstanding_bytes_ {}; // 未完成字节缓冲区
  RetransmissionTimer timer_; // 计时器
  uint64_t retransmission_cnt_ {};  // 重传次数
  uint64_t nbytes_in_flight_ {};
};
