#include <iostream>
#include <string>
#include <algorithm>
#include <vector>

using namespace std;

vector<int> div(const vector<int>& A, const int& B, int& r) {
    vector<int> C;
    r = 0;
    for(int i = A.size() - 1; i >= 0; -- i) {
        r = r * 10 + A[i];
        C.push_back(r / B);
        r %= B;
    }
    reverse(C.begin(), C.end());
    while(C.size() > 1 && C.back() == 0) C.pop_back();
    return C;
}

int main() {
    string a;
    int b, r;
    cin >> a >> b;
    vector<int> A;
    for(int i = a.size() - 1; i >= 0; -- i)
        A.push_back(a[i] - '0');
    auto C = div(A, b, r);
    for(auto i = C.rbegin(); i != C.rend(); ++ i) cout << *i;
    cout << endl << r << endl;
}