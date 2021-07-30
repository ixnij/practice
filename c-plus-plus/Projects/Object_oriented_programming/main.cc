#include <iostream>
#include <typeinfo>

#include <vector>
#include <array>
#include <initializer_list>

#include "class_p.h"
#include "ffmpef.h"
#include "ffmpef_plus.h"
#include "ya_array.h"

int main([[maybe_unused]] int argc, [[maybe_unused]] char* const argv[]) {
    ffmpef* base_class = new ffmpef(45);
    ffmpef_plus* fme = new ffmpef_plus(4);
    base_class = dynamic_cast<ffmpef* > (fme);
    std::cout << base_class -> fut(2) << std::endl;
    std::cout << typeid(int).name() << std::endl;
    ya_array<int, 5> ay;
    std::cout << ay.size() << std::endl;
    ya_array<int, 4> artt { 1, 2, 3, 44 };
    std::cout << artt.size() << std::flush << "\n";
    std::array<int, 8> ars {1, 2, 3, 4, 5, 6, 7, 8};
    for (auto itr = ars.begin(); itr != ars.end(); ++itr) {
      std::cout << *itr << "\n";
    }
    for (auto i = ars.rbegin(); i != ars.rend(); ++i) {
      std::cout << *i << "\n";
    }

}
