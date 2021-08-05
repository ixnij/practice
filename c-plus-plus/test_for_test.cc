#include "test.h"
#include <iostream>

using namespace std;

const int N = 10e5;

int main() {
    int ary[N];
    init_random(ary, 10, 10000, N);
    for (int i : ary) {
        cout << ary << endl;
    }
}
