#include <iostream>
#include <vector>

using namespace std;

int main() {
  vector<int> inter;
  inter.push_back(10);
  inter.push_back(100);
  inter.push_back(1000);
  cout << inter.back() << endl;
  for (auto i : inter) {
    cout << i << endl;
  }
}
