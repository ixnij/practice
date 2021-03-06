#include <iostream>
#include <string>
#include <vector>

using std::cout;
using std::vector;
using std::string;
using std::cin;

vector<int> ag(vector<int> &A, int B) {
    vector<int> C;
    for (int i = 0, t = 0; i < A.size() || t; ++i) {
        if (i < A.size())
            t += A[i] * B;
        C.push_back(t % 10);
        t /= 10;
    }
    while (C.size() > 1 && C.back() == 0)
        C.pop_back();
    return C;
}

int main(int argc, const char* const argv[]) {
    string a;
    int b;
    cin >> a >> b;
    vector<int> A;
    for (int i = a.size() - 1; i >= 0; --i)
        A.push_back(a[i] - '0');
    auto C = ag(A, b);
    for (auto i = C.rbegin(); i != C.rend(); ++i)
        cout << *i;
}
