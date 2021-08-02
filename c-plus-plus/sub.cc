#include <iostream>
#include <string>
#include <vector>

using namespace std;

// for judge a >= b
bool cmp(vector<int> &a, vector<int> &b) {
    if (a.size() != b.size()) return a.size() >= b.size();
    else {
        for (int i = a.size() - 1; i >= 0; -- i) {
            if (a[i] != b[i]) return a[i] > b[i];
        }
    }
    return true;
}

vector<int> sub(vector<int> &a, vector<int> &b) {
    vector<int> c;
    for (int i = 0, t = 0; i < a.size(); ++ i) {
        t = a[i] - t;
        if (i < b.size()) t -= b[i];
        c.push_back((t + 10) % 10);
        if(t < 0) t = 1;
        else t = 0;
    }
    while(c.size() > 1 && c.back() == 0) c.pop_back();
    return c;
} 

int main() {
    string a, b;
    cin >> a >> b;
    vector<int> A, B;
    for(int i = a.size() - 1; i >= 0; -- i)
        A.push_back(a[i] - '0');
    for(int i = b.size() - 1; i >= 0; -- i)
        B.push_back(b[i] - '0');

    if(cmp(A, B)) {
        auto C = sub(A, B);
        for (auto i = C.rbegin(); i != C.rend(); i ++) cout << *i;
    } else {
        auto C = sub(B, A);
        cout << "-";
        for (auto i = C.rbegin(); i != C.rend(); i ++) cout << *i;
    }
    // for(int i = C.size() - 1; i >= 0; -- i) cout << C[i];
}