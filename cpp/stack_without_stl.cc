#include <iostream>

using namespace std;
const int N = 1e5 + 10;
int stk[N], tt; // tt = index of stack top.

inline void add(int x) { stk[++tt] = x; }
inline void pop() { tt--; }
inline bool isempty() { return tt <= 0; }

inline int top() { return stk[tt]; }

int main(void) {}
