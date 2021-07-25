/*
 * @author Thomas Wu <ixnij.wu@outlook.com>
 * @filename rtti_virtual_function_rvalue_ref_std_move_with_stl.cc
 *
 * */

#include <iostream>
#include <typeinfo>

#include <vector>
#include <initializer_list>

#include "class_p.h"
#include "ffmpef.h"
#include "ya_array.h"

int main(void) {
    ffmpef* base_class = new ffmpef(45);
    ffmpef_plus* fme = new ffmpef_plus(4);
    base_class = dynamic_cast<ffmpef* > (fme);
    std::cout << base_class -> fut(2) << std::endl;
    std::cout << typeid(int).name() << std::endl;
    ya_array<int, 5> ay;
    std::cout << ay.size() << std::endl;
    ya_array<int, 4> artt { 1, 2, 3, 44 };
    std::cout << artt.size() << std::flush << "\n";
} 
