#include <cstring>
#include <cstdio>

const int N = 100;
int a[N];

int fib (int n) {
  if (n == 0 || n == 1) return 1;
  return fib (n - 1) + fib (n - 2);
}

int fib1 (int n) {
  if (n == 0 || n == 1) return 1;
  else {
    int m, n1;
    if (a[n] != 0) {
      return n;
    }
    if (a[n - 1] != 0) {
      m = a[n - 1];
    } else {
      m = fib1 (n - 1);
    }
    if (a[n - 2] != 0) {
      n1 = a[n - 2];
    } else {
      n1 = fib1 (n - 2);
    }
    return m + n1;
  }
}

int main () {
  std::memset (a, 0, sizeof (a));
  int n;
  scanf("%d", &n);
  printf("%d\n", fib1 (n - 1));
}
