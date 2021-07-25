#include <iostream>
#include <vector>

using namespace std;

int main([[maybe_unused]] int argc, [[maybe_unused]] char* const argv[]) {
    vector<int> vtr {1, 2, 3, 4};

    for ( auto itr = vtr.begin(); itr != vtr.end(); ++ itr ) {
        cout << *itr << endl;
        itr += itr;
    }

    cout << "== Re ==" << endl;

    for ( auto ritr = vtr.rbegin(); ritr != vtr.rend(); ++ ritr ) {
        cout << *ritr << endl;
    }
}
