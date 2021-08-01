#include <iostream>
using namespace std;
const int N = 10e6 + 10;
int a[N];

// binary_search. => lower_bound , upper_bound
int lower(int *c, int l, int r, int t) {
  while (l != r) {
    int mid = l + r >> 1;
    if (c[mid] >= t)
      r = mid;
    else
      l = mid + 1;
  }
  return c[l] == t ? l : -1;
}

int upper(int *c, int l, int r, int t) {
  while (l != r) {
    int mid = l + r + 1 >> 1;
    if (c[mid] <= t)
      l = mid;
    else
      r = mid - 1;
  }
  return c[l] == t ? l : -1;
}

int main(void) {
  ios_base::sync_with_stdio(false);
  cin.tie(nullptr);
  cout.tie(nullptr);
  int n, q;
  cin >> n >> q;
  for (int i = 0; i < n; ++i) {
    cin >> a[i];
  }

  for (int i = 0; i < q; ++i) {
    int w;
    cin >> w;
    cout << lower(a, 0, n - 1, w) << " " << upper(a, 0, n - 1, w) << endl;
  }
}