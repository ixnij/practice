#ifndef YA_ARRAY_H
#define YA_ARRAY_H

#include <vector>

template <typename T, int n> class ya_array { // Yet Another Array
private:
  T *ary;
  std::vector<T> vtr;

public:
  ya_array() {
    ary = new T[n];
    vtr.push_back(n);
  }
  std::size_t size() { return vtr.size(); }

// wrong.
virtual ~ya_array() { delete[] ary; }
}; // do not forget ;

#endif // YA_ARRAY_H
