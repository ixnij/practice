#include <iostream>

int main(void) {
    std::cout << "Hello, World!" << std::endl
              << "From CXX" << std::endl
              << R"+(
        The RAW STRING!
        )+" // do not forget CXX11!
              << std::endl;
}
