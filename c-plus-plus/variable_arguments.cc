#include <iostream>

using namespace std;


template<typename T, typename Arg...>
void output_arg(const T& val, const Arg&... args) {
    cout << val << endl;
    output_arg(args...);
}

int main([[maybe_unused]] int argc, [[maybe_unused]] char const *argv[]) {
    output_arg("Hello, World!", 1234, "Haskell", "Wine", "Classical", "Dio", "JoJo");
    return 0;
}
