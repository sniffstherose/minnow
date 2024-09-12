#include "byte_stream.hh"

using namespace std;

ByteStream::ByteStream( uint64_t capacity ) : capacity_( capacity ), buf_(vector<char>(capacity_)), nwrite_(0),
nread_(0), is_closed_(false){}

bool Writer::is_closed() const
{
  // Your code here.
  // return {};
  return is_closed_;
}

void Writer::push( string data )
{
  // Your code here.
  // (void)data;
  // return;
  for (const char &c : data) {
    if (nwrite_ >= nread_ + capacity_) {
      return;
    }
    buf_[nwrite_ % capacity_] = c;
    ++nwrite_;
  }
}

void Writer::close()
{
  // Your code here.
  is_closed_ = true;
}

uint64_t Writer::available_capacity() const
{
  // Your code here.
  return capacity_ - (nwrite_ - nread_);
}

uint64_t Writer::bytes_pushed() const
{
  // Your code here.
  return nwrite_;
}

bool Reader::is_finished() const
{
  // Your code here.
  return is_closed_ && (nread_ == nwrite_);
}

uint64_t Reader::bytes_popped() const
{
  // Your code here.
  return nread_;
}

string_view Reader::peek() const
{
  // Your code here.
  if (nread_ == nwrite_) return{};
  string_view sv(&buf_[nread_ % capacity_], 1);
  return sv;
}

void Reader::pop( uint64_t len )
{
  // Your code here.
  for (uint64_t i = 0; i < len; ++i) {
    if (nread_ < nwrite_) {
      ++nread_;
    } else {
      return;
    }
  }
}

uint64_t Reader::bytes_buffered() const
{
  // Your code here.
  return nwrite_ - nread_;
}
