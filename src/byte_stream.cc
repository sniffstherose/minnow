#include "byte_stream.hh"

using namespace std;

ByteStream::ByteStream( uint64_t capacity ) : capacity_( capacity ){}

bool Writer::is_closed() const
{
  return is_closed_;
}

void Writer::push( string data )
{
  if ( is_closed() ) {
    return;
  }
  if ( data.size() > available_capacity() ) {
    data.resize( available_capacity() );
  }

  if ( !data.empty() ) {
    nbytes_pushed_ += data.size();
    nbytes_buffered_ += data.size();
    buf_.emplace( move(data) );
  }
  if ( view_wnd_.empty() && !buf_.empty() ) {
    view_wnd_ = buf_.front();
  }
}

void Writer::close()
{
  if ( !is_closed_ ) {
    is_closed_ = true;
    buf_.emplace( string(1, EOF) );
  }
}

uint64_t Writer::available_capacity() const
{
  return capacity_ - nbytes_buffered_;
}

uint64_t Writer::bytes_pushed() const
{
  return nbytes_pushed_;
}

bool Reader::is_finished() const
{

  return is_closed_ && bytes_buffered() == 0;
}

uint64_t Reader::bytes_popped() const
{
  return nbytes_popped_;
}

string_view Reader::peek() const
{
  return view_wnd_;
}

void Reader::pop( uint64_t len )
{
  uint64_t temp = len;
  while ( temp >= view_wnd_.size() && temp != 0 ) {
    temp -= view_wnd_.size();
    buf_.pop();
    view_wnd_ = buf_.empty() ? ""sv : buf_.front();
  }
  if ( !view_wnd_.empty() ) {
    view_wnd_.remove_prefix( temp );
  }

  nbytes_buffered_ -= len;
  nbytes_popped_ += len;
}

uint64_t Reader::bytes_buffered() const
{
  return nbytes_buffered_;
}
