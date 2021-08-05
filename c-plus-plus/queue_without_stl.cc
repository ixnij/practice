#include <iostream>

using namespace std;
const int N = 1e5 + 10;
int q[N], hh, tt = -1;
// hh = head of the queue
inline void add(int x) { q[++tt] = x; }
inline void pop() { hh++; }
inline bool isempty() { return hh > tt; }
int main(void) {}
