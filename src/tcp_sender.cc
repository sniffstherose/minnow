#include "tcp_sender.hh"
#include "tcp_config.hh"

using namespace std;

RetransmissionTimer& RetransmissionTimer::active() noexcept {
  is_active_ = true;
  return *this;
}

RetransmissionTimer& RetransmissionTimer::timeout() noexcept {
  RTO_ <<= 1;
  return *this;
}

RetransmissionTimer& RetransmissionTimer::reset() noexcept {
  time_passed_ = 0;
  return *this;
}

RetransmissionTimer& RetransmissionTimer::tick( uint64_t ms_since_last_tick ) noexcept {
  time_passed_ += is_active_ ? ms_since_last_tick : 0;
  return *this;
}

uint64_t TCPSender::sequence_numbers_in_flight() const
{
  return nbytes_in_flight_;
}

uint64_t TCPSender::consecutive_retransmissions() const
{
  return retransmission_cnt_;
}

/*
  推送函数
  1. 初始化相关信息，包括接受方窗口大小，fin标志位等；
  2. 循环从ByteStream中读取数据并组装数据包直到达到窗口上限或没有数据了
  注意发出FIN后不再发送；
  3. 封装好消息，判断能否发送FIN，设置相应的标志位
  4. 发送消息，启用计时器
*/
void TCPSender::push( const TransmitFunction& transmit )
{
  Reader& bytes_reader = input_.reader();
  fin_flag_ |= bytes_reader.is_finished();  // 刚建立就关闭（脑子坏掉了吧）
  if ( sent_fin_ ) // 如果已经发送过了fin则后续不再发送任何内容
    return;

  const size_t window_size = wnd_size_ == 0 ? 1 : wnd_size_;  // 初始化接收方窗口大小
  // 循环组装数据报，当窗口达到上限或没有数据可读，并且发出FIN后不会再尝试组装
  for ( string payload {}; nbytes_in_flight_ < window_size && !sent_fin_; payload.clear() ) {
    string_view bytes_view = bytes_reader.peek();
    // 流为空、不需要发出FIN、已经发送了连接请求
    if ( bytes_view.empty() && !fin_flag_ && sent_syn_ )
      break;
    // 从流中读取数据，组装报文，直到达到文件长度限制或窗口上限
    while ( payload.size() + nbytes_in_flight_ + ( !sent_syn_ ) < window_size
            && payload.size() < TCPConfig::MAX_PAYLOAD_SIZE ) {
      if ( bytes_view.empty() || fin_flag_ )  // 没有数据读了或者关闭了
        break;

      // 当前分组超过限制则需要截断
      if ( const uint64_t available_size = min( TCPConfig::MAX_PAYLOAD_SIZE,
           window_size - ( payload.size() + nbytes_in_flight_ + ( !sent_syn_ ) ) );
           bytes_view.size() > available_size )
        bytes_view.remove_suffix( bytes_view.size() - available_size );

      payload.append( bytes_view );
      bytes_reader.pop( bytes_view.size() );
      // 检查流是否关闭
      fin_flag_ |= bytes_reader.is_finished();
      bytes_view = bytes_reader.peek(); // 获取下一组数据
    }
  // 封装消息
  auto& msg = outstanding_bytes_.emplace(
    make_message( next_seqno_, move( payload ), sent_syn_ ? syn_flag_ : true, fin_flag_ ) );
  
  // 若已经发送了syn，则后续可能重发也可能不重发，看syn_flag_
  const size_t margin = sent_syn_ ? syn_flag_ : 0;
  // 发不出去FIN
  if ( fin_flag_ && ( msg.sequence_length() - margin ) + nbytes_in_flight_ > window_size )
    msg.FIN = false;
  else if ( fin_flag_ )  // 否则发送
    sent_fin_ = true;
  // 注意这里的细节，相当细节，防止最后加上SYN不对劲
  const size_t correct_size = msg.sequence_length() - margin;

  nbytes_in_flight_ += correct_size;
  next_seqno_ += correct_size;
  sent_syn_ = true;
  transmit( msg );
  if ( correct_size != 0 )
    timer_.active();
  }
}

TCPSenderMessage TCPSender::make_message( uint64_t seqno, string payload, bool SYN, bool FIN ) const
{
  return {
    .seqno = Wrap32::wrap( seqno, isn_ ),
    .SYN = SYN,
    .payload = move( payload ),
    .FIN = FIN,
    .RST = input_.reader().has_error()
  };

}

TCPSenderMessage TCPSender::make_empty_message() const
{
  return make_message( next_seqno_, {}, false );
}

/*
  接收发送方的确认消息：
  1. 检查ackno是否存在或者越界，获取window size的情况
  2. 根据确认号处理未完成缓冲区
  3. 处理计时器重置问题
*/
void TCPSender::receive( const TCPReceiverMessage& msg )
{
  // 基本的错误情况
  wnd_size_ = msg.window_size;
  if ( !msg.ackno.has_value() ) { // first package without ackno
    if ( wnd_size_ == 0 )
      input_.set_error();
    return;
  }
  // 发送方期待的下一字节
  const uint64_t excepting_seqno = msg.ackno->unwrap( isn_, next_seqno_ );
  if ( excepting_seqno > next_seqno_ )  // 这还没发你就确认了？
    return;

  // 标记是否有新确认的序列号
  bool is_acknowledged = false;
  // 循环获取未完成缓冲区的内容
  while ( !outstanding_bytes_.empty() ) {
    auto& buffered_msg = outstanding_bytes_.front();
    // 期待的下一字节不足以将这条消息覆盖，则不处理
    if ( const uint64_t final_seqno = acked_seqno_ + buffered_msg.sequence_length() - buffered_msg.SYN;
         excepting_seqno <= acked_seqno_ || excepting_seqno < final_seqno )
        break;
    // 走到这说明有新的确认到达
    is_acknowledged = true;
    nbytes_in_flight_ -= buffered_msg.sequence_length() - syn_flag_;
    acked_seqno_ += buffered_msg.sequence_length() - syn_flag_;
    // syn是否确认
    syn_flag_ = sent_syn_ ? syn_flag_ : excepting_seqno <= next_seqno_;
    outstanding_bytes_.pop();
  }
  if ( is_acknowledged ) {
    // 没有待确认的了，只重置计时器
    if ( outstanding_bytes_.empty() )
      timer_ = RetransmissionTimer( initial_RTO_ms_ );
    else
      timer_ = move( RetransmissionTimer( initial_RTO_ms_ ).active() );
    retransmission_cnt_ = 0;
  }
}

/**tick函数
 * 1. 超时则重传
 * 2. 如果window size为0则只重置计时器
 * 3. 否则RTO变为两倍
 * 4. 增加重传次数
 */
void TCPSender::tick( uint64_t ms_since_last_tick, const TransmitFunction& transmit )
{
  if ( timer_.tick( ms_since_last_tick ).is_expired() ) {
    transmit( outstanding_bytes_.front() );
    if ( wnd_size_ == 0 )
      timer_.reset();
    else
      timer_.timeout().reset();
    ++retransmission_cnt_;
  }
}
