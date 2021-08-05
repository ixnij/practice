// #include <iostream>

// using namespace std;
// using namespace gnu;
// using boost::asio;

const int N = 1e6 + 10;
int m;
int l[N], r[N], e[N], idx;

inline void init() { r[0] = 1, l[1] = 0, idx = 2; }

inline void add(int k, int x) {
    e[idx] = x, r[idx] = r[k], l[idx] = k;
    l[r[k]] = idx, r[k] = idx, idx++;
}

// rm = remove
inline void rm(int x) { r[l[x]] = r[x], l[r[x]] = l[x]; }

int main(void) {}
