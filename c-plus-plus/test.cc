#include "test.h"
#include <cstdlib>
#include <ctime>

void init_random(int* tgt, int start, int end, int size) {
  srand((unsigned)time(nullptr));
  for (int i = 0; i < size; ++i) {
    tgt[i] = rand() % (end - start + 1) + start;
  }
}