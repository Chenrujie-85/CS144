#include "byte_stream.hh"

// Dummy implementation of a flow-controlled in-memory byte stream.

// For Lab 0, please replace with a real implementation that passes the
// automated checks run by `make check_lab0`.

// You will need to add private members to the class declaration in `byte_stream.hh`

template <typename... Targs>
void DUMMY_CODE(Targs &&... /* unused */) {}

using namespace std;

ByteStream::ByteStream(const size_t capacity):max_capacity(capacity) {}

size_t ByteStream::write(const string &data) {
    size_t len = min(data.size(), max_capacity-q.size());
    had_write += len;
    for(size_t i = 0; i < len; ++i)
        q.push_back(data[i]);
    return len;
}

//! \param[in] len bytes will be copied from the output side of the buffer
string ByteStream::peek_output(const size_t len) const {
    size_t will_pop = min(q.size(), len);
    return string().assign(q.begin(), q.begin()+will_pop);
}

//! \param[in] len bytes will be removed from the output side of the buffer
void ByteStream::pop_output(const size_t len) {
    size_t will_pop = min(q.size(), len);
    had_read += will_pop;
    while(will_pop){
        q.pop_front();
        will_pop--;
    }
}

//! Read (i.e., copy and then pop) the next "len" bytes of the stream
//! \param[in] len bytes will be popped and returned
//! \returns a string
std::string ByteStream::read(const size_t len) {
    string res = peek_output(len);
    pop_output(len);
    return res;
}

void ByteStream::end_input() {
    isEnd = true;
}

bool ByteStream::input_ended() const { return isEnd; }

size_t ByteStream::buffer_size() const { return q.size(); }

bool ByteStream::buffer_empty() const { return q.empty(); }

bool ByteStream::eof() const { return buffer_empty() && input_ended(); }

size_t ByteStream::bytes_written() const { return had_write; }

size_t ByteStream::bytes_read() const { return had_read; }

size_t ByteStream::remaining_capacity() const { return max_capacity - q.size(); }
