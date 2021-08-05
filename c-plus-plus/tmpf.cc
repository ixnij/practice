#include <iostream>

using namespace std;
const int N = 1e5 + 10;
int head, e[N], ne[N], idx; // e = value, ne = next value, idx = index

inline void init() {
    head = -1; // 头节点后即是空集 (空集使用 -1 表示)
    idx = 0;
}

// insert x to the index after k
inline void add(int k, int x) {
    e[idx] = x;
    ne[idx] = ne[k];
    ne[k] = idx;
    idx++;
}

// rm = remove
inline void rm(int k) {
    ne[k] = ne[ne[k]]; // = ne[k + 1];
}

/*      value:  3    4    5
 *      head -> o -> o -> o -> tail
 *      index:  0    1    2
 * */

inline void add_to_head(int x) {
    e[idx] = x, ne[idx] = head, head = idx, idx++;
}

// the main function.
int main(void) {}
