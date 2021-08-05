#include <iostream>

using namespace std;
const int N = 1e5 + 10, P = 131;
char c[N];
int n;
unsigned long long h[N], p[N];

unsigned long long query(int l, int r) {
    return h[r] - h[l - 1] * p[r - l + 1];
}

int main() {
    cin >> n >> c;
    p[0] = 1;
    for (int i = 1; i <= n; ++ i) {
        p[i] = p[i - 1] * P;
        h[i] = h[i - 1] * P + c[i - 1];
    }
    for (int i = 0; i < n; ++ i) {
	printf("Hash %d: %lld\n", i + 1, h[i]);
    }
}
