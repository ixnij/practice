#include <algorithm>
#include <iostream>
#include <set>
#include <sstream>
#include <string>

using namespace std;

int main() {
    string buf, s;
    set<string> p;
    while (cin >> s) {
        for (int i = 0; i < s.length(); ++i) {
            if (isalpha(s[i]))
                s[i] = tolower(s[i]);
            else
                s[i] = ' ';
        }
        stringstream ww(s);
        while (ww >> buf) {
            p.insert(buf);
        }
    }

    for (auto i = p.begin(); i != p.end(); ++i) {
        cout << *i << endl;
    }
}