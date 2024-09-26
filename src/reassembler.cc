#include "reassembler.hh"

#include <algorithm>

using namespace std;

/*
  控制数据插入的方法：
  1. 筛选不符合条件的数据分组：
    - 字节流已经关闭却还要写的分组；
    - 已经没有空闲空间还要写的分组；
    - first_index不在接受范围内的分组。
  2. 处理数据，对于数据长度超过了缓冲区容量的分组，将其后半部分截断再存储；
  3. 根据first_index分类：
    - first_index > expecting_index_时，说明还有缺失数据，将该分组缓存；
    - 否则，将其压入字节流中；
  4. 最后更新缓冲区。
*/
void Reassembler::insert( uint64_t first_index, string data, bool is_last_substring )
{
  Writer &bytes_writer = output_.writer();
  // 筛选条件
  if ( const uint64_t unacceptable_idx = expecting_index_ + bytes_writer.available_capacity();
       bytes_writer.is_closed() || bytes_writer.available_capacity() == 0 || first_index >= unacceptable_idx )
    return;
  else if ( first_index + data.size() >= unacceptable_idx ) {
    is_last_substring = false;
    data.resize( unacceptable_idx - first_index );
  }
  if ( first_index > expecting_index_ ) {
    cache_bytes( first_index, move( data ), is_last_substring );
  } else {
    push_bytes( first_index, move( data ), is_last_substring );
  }
  flush_buffer();
}

uint64_t Reassembler::bytes_pending() const
{
  return nbytes_pending_;
}

/*
  将数据推入字节流的逻辑实现函数：
  1. first_index < expecting_index_的分组，说明其从expecting_index_开始往后的所有字节
  都是符合要求的，并且没有缺失，所以将其前面从0开始截去expecting_index_ - first_index
  个字节；
  2. 直接将data推入字节流中，维护好相关变量；
  3. 对于is_last_substring为true的分组，在将其推入字节流后应关闭字节流并清空缓冲区。
*/
void Reassembler::push_bytes( uint64_t first_index, string data, bool is_last_substring ) {
  if ( first_index < expecting_index_ ) 
    data.erase( 0, expecting_index_ - first_index );
  expecting_index_ += data.size();
  output_.writer().push( move(data) );

  if ( is_last_substring ) {
    output_.writer().close();
    unordered_bytes_.clear();
    nbytes_pending_ = 0;
  }
}

/*
  缓存逻辑实现函数：
  1. 先获取左右区间位置；
  2. 处理左区间重叠情况：
    - 新的分组数据包含在了原序列中，直接返回；
    - 没有重叠，对新数据不作任何操作，最后插入到合适为止即可；
    - 有重叠，根据具体重叠情况处理；
  3. 处理右区间重叠情况，对于处理完左侧的数据，当右侧有重叠时，将其与右侧
  原数据拼接
  4. 从left开始遍历，删除区间内所有的节点，插入新的数据
*/
void Reassembler::cache_bytes( uint64_t first_index, string data, bool is_last_substring ) {
  auto end = unordered_bytes_.end();
  // 获取左右区间
  auto left = lower_bound( unordered_bytes_.begin(), end, first_index, []( auto&& e, uint64_t idx ) -> bool {
    return idx > ( get<0>( e ) + get<1>( e ).size() );
  } );
  auto right = upper_bound( left, end, first_index + data.size(), []( uint64_t idx, auto&& e ) -> bool {
    return idx < get<0>( e );
  } );
  // 处理左区间有重叠
  if ( const uint64_t next_index = first_index + data.size(); left != end ) {
    auto& [lpoint, str, _] = *left;
    if ( const uint64_t rpoint = lpoint + str.size(); first_index >= lpoint && next_index <= rpoint  )
      return;
    else if ( next_index < lpoint )
      right = left;
    else if ( !( first_index <= lpoint && next_index >= rpoint ) ) {
      if ( first_index < lpoint ) {
        data.resize( data.size() - ( next_index - lpoint ) );
        data.append( str );
      } else {
        data.insert( 0, string_view( str.c_str(), str.size() - ( rpoint - first_index ) ) );
      }
      first_index = min( first_index, lpoint );
    }
  }
  // 处理右区间有重叠
  if ( const uint64_t next_index = first_index + data.size(); right != left && !unordered_bytes_.empty() ) {
    auto& [lpoint, str, _] = *prev( right );
    if ( const uint64_t rpoint = lpoint + str.size(); rpoint > next_index ) {
      data.resize( data.size() - ( next_index - lpoint ) );
      data.append( str );
    }
  }
  // 删除区间内的节点
  for ( ;left != right; left = unordered_bytes_.erase( left ) ) {
    nbytes_pending_ -= get<1>( *left ).size();
    is_last_substring |= get<2>( *left );
  }
  nbytes_pending_ += data.size();
  unordered_bytes_.insert( left, { first_index, move( data ), is_last_substring } );
}

/*
  刷新缓冲区逻辑实现函数：
  一直将可以push的字节push掉即可
*/
void Reassembler::flush_buffer() {
  while ( !unordered_bytes_.empty() ) {
    auto& [index, str, is_last] = unordered_bytes_.front();
    if ( index > expecting_index_ )
      break;
    nbytes_pending_ -= str.size();
    push_bytes( index, move( str ), is_last );
    if ( !unordered_bytes_.empty() )
      unordered_bytes_.pop_front();
  }
}