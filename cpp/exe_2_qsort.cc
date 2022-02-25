#include <iostream>

using namespace std;

const int N = 10e5 + 10;

void qsort(int *a, int l, int r) {
    if (l >= r)
        return;
    int mid = a[(l + r + 1) >> 1], i = l - 1, j = r + 1;
    while (i < j) {
        do
            i++;
        while (a[i] < mid);
        do
            j--;
        while (a[j] > mid);
        if (i < j)
            swap(a[i], a[j]);
    }
    qsort(a, l, j - 1);
    qsort(a, j, r);
}

int main(void) {
    int n, ary[N];
    cin >> n;
    for (int i = 0; i < n; ++i) {
        cin >> ary[i];
    }
    qsort(ary, 0, n - 1);
    for (int i = 0; i < n; ++i) {
        cout << ary[i] << " ";
    }
    
}
