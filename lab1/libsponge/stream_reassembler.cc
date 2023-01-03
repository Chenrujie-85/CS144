#include "stream_reassembler.hh"

// Dummy implementation of a stream reassembler.

// For Lab 1, please replace with a real implementation that passes the
// automated checks run by `make check_lab1`.

// You will need to add private members to the class declaration in `stream_reassembler.hh`

template <typename... Targs>
void DUMMY_CODE(Targs &&... /* unused */) {}

using namespace std;

StreamReassembler::StreamReassembler(const size_t capacity) : _output(capacity), _capacity(capacity) {}

//! \details This function accepts a substring (aka a segment) of bytes,
//! possibly out-of-order, from the logical stream, and assembles any newly
//! contiguous substrings and writes them into the output stream in order.
void StreamReassembler::push_substring(const string &data, const size_t index, const bool eof) {
    if(index >= next_index + _capacity)
        return;
    //接收
    data_node new_data;
    isEnd |= eof;
    if(index + data.size() < next_index){
        return ;
    }
    else if(index < next_index){
        size_t offset = next_index - index;
        string s = data.substr(offset);
        new_data.begin = index + offset;
        new_data.s = s;
        new_data.len = s.size();
    }
    else{
        new_data.begin = index;
        new_data.s = data;
        new_data.len = data.size();
    }
    had_receive += new_data.len;
    //调整
    auto iter = unreassembler.lower_bound(new_data);
    long long merge_byte;
    while(iter != unreassembler.end() && (merge_byte = merge(*iter, new_data)) >= 0){
        had_receive -= merge_byte;
        unreassembler.erase(iter);
        iter = unreassembler.lower_bound(new_data);
    }
    if(iter != unreassembler.begin()){
        iter--;
        while((merge_byte = merge(*iter, new_data) >= 0)) {
            had_receive -= merge_byte;
            unreassembler.erase(iter);
            iter = unreassembler.lower_bound(new_data);
            if (iter == unreassembler.begin())
                break;
            iter--;
        }
    }
    unreassembler.insert(new_data);
    //发送
    if(!unreassembler.empty() && unreassembler.begin()->begin == next_index){
        string s = unreassembler.begin()->s;
        size_t had_write = _output.write(s);
        next_index += had_write;
        had_receive -= had_write;
        unreassembler.erase(unreassembler.begin());
    }
    if(isEnd && empty())
        _output.end_input();
}

long long StreamReassembler::merge(const data_node& old_data, data_node& new_data){
    data_node x, y;
    if (new_data.begin > old_data.begin) {
        x = old_data;
        y = new_data;
    } else {
        x = new_data;
        y = old_data;
    }
    if (x.begin + x.len < y.begin) {
        return -1;  // no intersection, couldn't merge
    } else if (x.begin + x.len >= y.begin + y.len) {
        new_data = x;
        return y.len;
    } else {
        new_data.begin = x.begin;
        new_data.s = x.s + y.s.substr(x.begin + x.len - y.begin);
        new_data.len = new_data.s.length();
        return x.begin + x.len - y.begin;
    }
}

size_t StreamReassembler::unassembled_bytes() const { return had_receive; }

bool StreamReassembler::empty() const { return had_receive == 0; }
