#include "wrapping_integers.hh"

using namespace std;

Wrap32 Wrap32::wrap( uint64_t n, Wrap32 zero_point )
{
  return zero_point + n;
}

uint64_t Wrap32::unwrap( Wrap32 zero_point, uint64_t checkpoint ) const
{
  // 32bit的上界
  uint64_t upper = static_cast<uint64_t>(UINT32_MAX) + 1;
  // checkpoint + zero_point
  const uint32_t checkpoint_mod = Wrap32::wrap( checkpoint, zero_point ).raw_value_;
  // 如果raw_value < checkpoint_mod，因为这是无符号减法，所以相当于checkpoint_mod - raw_value
  uint32_t distance = raw_value_ - checkpoint_mod;
  // 如果距离大于一般或者加起来超过界限了，说明要求的绝对序列小于checkpoint的，减去一个2^32
  if ( distance <= ( upper >> 1 ) || checkpoint + distance < upper )
    return checkpoint + distance;
  return checkpoint + distance - upper;
}
