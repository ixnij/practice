#include <stdio.h>

void num (int n) {
  if (n != 0) {
    printf("Hello, World!\n");
    num (n-1);
  }
  return ;
}

int main () {
  num (4);
}
