#include <iostream>

using namespace std;

const int N = 10e6 + 10;
int n, a[N];

void quick_sort(int* c, int l, int r) {
    if (l >= r)
    {
        return;
    }
    
    int m = c[ (l + r + 1) >> 1], i = l - 1, j = r + 1;
    while (i < j)
    {
        do i ++; while(c[i] < m);
        do j --; while(c[i] > m);
        if (i < j)
        {
            swap(c[i], c[j]);
        }
        
    }
    quick_sort(c, l, i);
    quick_sort(c, i + 1, r);
}

int main(void) {
    ios_base::sync_with_stdio(false);
    cin.tie(nullptr);
    cout.tie(nullptr);
    cin >> n;
    for (int i = 0; i < n; i++)
    {
        cin >> a[i];
    }
    quick_sort(a, 0, n - 1);
    for (int i = 0; i < n; i++)
    {
        cout << a[i] << " ";
    }
    
}