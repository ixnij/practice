#include <iostream>

using namespace std;
const int N = 1e6 + 10;
int stk[N], tt = 0;

int main(void) {
    ios_base::sync_with_stdio(false);
    cin.tie(nullptr), cout.tie(nullptr);
    int n;
    cin >> n;
    for (int i = 0; i < n; ++i) {
        int x;
        cin >> x;
        while (tt && stk[tt] >= x)
            tt--;
        if (tt)
            cout << stk[tt] << " ";
        else
            cout << "-1 ";
        stk[++tt] = x;
    }
}