#include <cstdlib>
#include <iostream>
#include <ctime>

using namespace std;

void init_random(int *tgt, int start, int end, int size) {
    srand((unsigned)time(nullptr));
    for (int i = 0; i < size; ++i) {
        tgt[i] = rand() % (end - start + 1) + start;
    }
}

int main(int argc, const char **argv) {
    int ary[5];
    init_random(ary, 0, 100, 5);
    for(int i : ary) {
        cout << i << " ";
    }
    return 0;
}
