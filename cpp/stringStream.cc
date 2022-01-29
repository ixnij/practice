#include <ios>
#include <iostream>
#include <sstream>
#include <string>

using namespace std;

int main() {
    ios::sync_with_stdio(false);
    cin.tie(nullptr);
    cout.tie(nullptr);
    string a;
    cin >> a;
    stringstream p(a);
    int ab;
    p.tie(nullptr);
    while (p >> ab)
        cout << ab << endl;
}