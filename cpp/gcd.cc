#include <iostream>

int gcd(const int &a, const int &b) {
    if (a % b == 0) {
        return b;
    } else {
        return gcd(b, a % b);
    }
}

// complite command: clang -o ${filename.noext} ${filename} -std=c++17 -lstdc++

int main([[maybe_unused]] int argc, [[maybe_unused]] char *const argv[]) {
    int num_one = 1230;
    int num_two = 121000;
    ::std::cout << "This is the"
                   "Result: "
                << gcd(num_one, num_two) << "\n";
}