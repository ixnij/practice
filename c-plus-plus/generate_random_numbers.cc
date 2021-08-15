#include <cstdlib>
#include <iostream>
#include <ctime>

using namespace std;

int main() {
    srand((unsigned)time(nullptr));
    const int size = 200, start = 1, end = 99;
    for (int i = 0; i < size; ++i) {
        cout <<  rand() % (end - start + 1) + start << " ";
    }
    cout << endl;
    return 0;
}
