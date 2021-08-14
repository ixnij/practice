#include <iostream>

using std::cout;
using std::cin;

const int N = 10e6 + 10;
int a[N], tmp[N];

void merge_sort(int *c, int l, int r) {
    if (l >= r) {
        return;
    }
    int mid = (l + r) >> 1;
    merge_sort(c, l, mid), merge_sort(c, mid + 1, r);
    int k = 0, i = l, j = mid + 1; // The Variable i = L! L(l)
    while (i <= mid && j <= r) {
        if (c[i] <= c[j]) {
            tmp[k++] = c[i++];
        } else {
            tmp[k++] = c[j++];
        }
    }
    while (i <= mid) {
        tmp[k++] = c[i++];
    }
    while (j <= r) {
        tmp[k++] = c[j++];
    }
    // the variable i in the following line sets to L! not a number!
    for (i = l, j = 0; i <= r; ++i, ++j) {
        c[i] = tmp[j];
    }
}

int main(void) {
    std::ios_base::sync_with_stdio(false);
    cin.tie(nullptr);
    cout.tie(nullptr);
    int n;
    cin >> n;
    for (int i = 0; i < n; ++i) {
        cin >> a[i];
    }
    merge_sort(a, 0, n - 1);
    for (int i = 0; i < n; ++i) {
        cout << a[i] << " ";
    }
}
