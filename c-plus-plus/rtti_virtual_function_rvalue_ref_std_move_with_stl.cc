/*
 * @author Thomas Wu <ixnij.wu@outlook.com>
 * @filename rtti_virtual_function_rvalue_ref_std_move_with_stl.cc
 *
 * */

#include <iostream>
#include <typeinfo>

#include <vector>
#include <initializer_list>

class p {
    int private_variable_in_class;
    short panicer = 3;
    public:
        p(int arg) : private_variable_in_class(arg) {  }
        p() : private_variable_in_class(1) { }
        virtual ~p();
        virtual int pointered(int* p) = 0;
        virtual int max(int, int) = 0;
        virtual int counter();
};

class anotr : public p {
    public:
        virtual pointered(int* p) { return *p; }
        virtual inline int max(int, int);
        virtual inline int counter() override;
};

class ffmpef {
    private:
        enum { max };
        int* ptr_t;
    public:
//        ffmpef() = default;
        ffmpef(int value) { ptr_t = new int; *ptr_t = value;}
        virtual ~ffmpef() { delete ptr_t; }
        virtual int fut(int one) { return max + one; } 
};

class ffmpef_plus : public ffmpef {
    private:
        int cont = 3;
        int* ptr_newer;
    public:
       virtual int fut(int one) override { return cont + one; }
       unsigned qu() { return cont; }
       ffmpef_plus(int arg) : ffmpef(arg), cont(arg) {
           ptr_newer = new int;
           *ptr_newer = cont; 
       }
//       ffmpef_plus() = default;
       virtual ~ffmpef_plus() {
           delete ptr_newer;
       }
       ffmpef_plus& operator=(ffmpef_plus&&) noexcept;
};

inline int anotr::max(int one, int two) { return one > two ? one : two; }
inline int p::counter() { return private_variable_in_class + panicer; }
inline int anotr::counter() { return p::counter(); }

ffmpef_plus& ffmpef_plus::operator=(ffmpef_plus&& f) noexcept {
    if ( f.ptr_newer == this -> ptr_newer && f.cont == this -> cont) {
        return *this;
    }        
    delete this -> ptr_newer;
    this -> ptr_newer = f.ptr_newer;
    f.ptr_newer = nullptr;
    this -> cont = f.cont;
    return *this;
}

template<typename T, int n>
class ya_array { // Yet Another Array
    private:
        T* ary;    
        std::vector<T> vtr;
    public:
        ya_array() {
            ary = new T[n];
            vtr.push_back(n);
        }  
        ya_array(std::initializer_list<T> ilt) : vtr(ilt) {
            ary = new T[n];
            // Wrong. I don't know it's right or invild.
        }
        std::size_t size() {
            return vtr.size();
        }
        // wrong.
        virtual ~ya_array() {
            delete [] ary;
        }
}; // do not forget ;

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
