#include <iostream>

using namespace std;

const int N = 10e6 + 10;
int n, a[N];

void qsort(int c[], int l, int r) {
  if (l >= r)
    return;
  int m = c[(l + r + 1) >> 1], i = l - 1, j = r + 1;

  while (i < j) {
    do
      i++;
    while (c[i] < m);
    do
      j--;
    while (c[j] > m);
    if (i < j)
      swap(c[i], c[j]);
  }

  qsort(c, l, i - 1);
  qsort(c, i, r);
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
    cout << "OK" << endl;
    qsort(a, 0, n - 1);
    for (int i = 0; i < n; i++)
    {
        cout << a[i] << " ";
    }
}
