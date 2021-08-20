#include <string>
#include <iostream>
#include "autosprintf.h"

using std::cout;
using gnu::autosprintf;

int main() {
  std::string word = "Hello, World!";
  int mir = 100;
  cout << autosprintf("The word is %s, the number is %d\n", word, mir);
}
