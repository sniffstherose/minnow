#include "reassembler.hh"

using namespace std;

void Reassembler::insert( uint64_t first_index, string data, bool is_last_substring )
{
  // Your code here.
  // (void)first_index;
  // (void)data;
  // (void)is_last_substring;
  /*
    丢弃不符合要求的substring：
    1. first_index过于老，已经缓存了，丢弃
    2. first_index过于新，超过窗口范围，丢弃
    3. first_index + substring的长度超过可用空间，丢弃
    4. first_index与已经缓存的冲突，丢弃
  */
  
  

}

uint64_t Reassembler::bytes_pending() const
{
  // Your code here.
  return buffered_;
}
