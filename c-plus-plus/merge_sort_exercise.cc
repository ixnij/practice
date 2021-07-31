#include <iostream>
using namespace std;

const int N = 10e5 + 10;
typedef long long ll;
ll a[N], tmp[N];
ll merge_sort(ll q[], ll l, ll r)
{
    if (l >= r) return 0;

    ll mid = l + r >> 1;
    ll result = merge_sort(q, l, mid) + merge_sort(q, mid + 1, r);
    ll i = l, k = 0, j = mid + 1;
    while (i <= mid && j <= r)
        if (q[i] <= q[j]) {
            tmp[k ++] = q[i ++];
        } else {
            tmp[k ++] = q[j ++];
            result += mid - i + 1;
        }
    while(i <= mid) {
        tmp[k ++] = q[i ++];
    }
    while(j <= r) {
        tmp[k ++] = q[j ++];
    }
    for (i = l, j = 0; i <= r; i ++, j ++ ) q[i] = tmp[j];
    return result;
}


int main() {
    ios_base::sync_with_stdio(false);
    cin.tie(nullptr); cout.tie(nullptr);
    int n;
    cin >> n;
    for (int i = 0; i < n; ++ i) {
        cin >> a[i];
    }
    cout << merge_sort(a, 0, n - 1);
}