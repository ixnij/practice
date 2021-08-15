#include <iostream>
#include <string>
#include <vector>

using namespace std;

vector<int> add(vector<int> &o, vector<int> &t) {
    vector<int> c;
    int j = 0;
    for (int i = 0; i < o.size() || i < t.size(); ++i) {
        if (i < o.size())
            j += o[i];
        if (i < t.size())
            j += t[i];
        c.push_back(j % 10);
        j /= 10;
    }
    if (j)
        c.push_back(1);
    return c;
}

int main() {
    string A, B;
    vector<int> a, b;
    cin >> A >> B;

    for (int i = A.size() - 1; i >= 0; --i) {
        a.push_back(A[i] - '0');
    }

    for (int i = B.size() - 1; i >= 0; --i) {
        b.push_back(B[i] - '0');
    }

    vector<int> c = add(a, b);
    for (int i = c.size() - 1; i >= 0; --i) {
        cout << c[i];
    }
}
