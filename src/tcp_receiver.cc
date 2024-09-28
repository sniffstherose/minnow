#include "tcp_receiver.hh"

using namespace std;

/*
  接收消息并调用重组器：
  这个函数要实现的功能主要有：
    - 计算stream index
    - 排除不正确的message
  实现思路：
    1. stream index可以根据absolute seqno来计算，所以我们需要先计算absolute seqno，
    这里可以用到wrapping_integers里实现好的Wrap32类来实现相关转换。首先找到一个check
    -point，然后只需要调用unwrap函数求得对应的absolute seqno即可，注意最后插入的时候
    我们要考虑SYN，所以应该插入absolute seqno - 1（0除外）；
    2. 要排除不正确的message，主要有两种情况：
      - 刚接收一个SYN报文，下一个又是序号为ISN的；
      - 还未接收SYN报文，但是来的消息不是SYN报文。

*/
void TCPReceiver::receive( TCPSenderMessage message )
{
  const uint64_t checkpoint = reassembler_.writer().bytes_pushed() + ISN_.has_value();
  if ( message.RST ) {
    reassembler_.reader().set_error();
  } else if ( checkpoint > 0 && checkpoint <= UINT32_MAX && message.seqno == ISN_ ) 
    return;
  if ( !ISN_.has_value() ) {
    if ( !message.SYN )
      return;
    ISN_ = message.seqno;
  }
  const uint64_t abso_seqno = message.seqno.unwrap( *ISN_, checkpoint );
  reassembler_.insert( abso_seqno == 0 ? abso_seqno : abso_seqno - 1, move( message.payload ), message.FIN );
}


/*
  返回给发送方相关信息
  这个函数主要实现一个内容：返回确认号、接收窗口大小、断开连接标志位。
  这个函数实现比较简单，具体看代码即可。
*/
TCPReceiverMessage TCPReceiver::send() const
{
  const uint64_t checkpoint = reassembler_.writer().bytes_pushed() + ISN_.has_value();
  const uint64_t capacity = reassembler_.writer().available_capacity();
  const uint16_t wnd_size = capacity > UINT16_MAX ? UINT16_MAX : capacity;
  if ( !ISN_.has_value() )
    return { {}, wnd_size, reassembler_.writer().has_error() };
  // 如果关闭了，则发送FIN包
  return  { Wrap32::wrap( checkpoint + reassembler_.writer().is_closed(),  *ISN_),
            wnd_size,
            reassembler_.writer().has_error() };
}
