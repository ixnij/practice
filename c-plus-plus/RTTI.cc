#include <iostream>
#include <typeinfo>

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
    public:
       virtual int fut(int one) override { return cont + one; }
       ffmpef_plus(int arg) : ffmpef(arg), cont(arg) { }
       ffmpef_plus() = default;
};

inline int anotr::max(int one, int two) { return one > two ? one : two; }
inline int p::counter() { return private_variable_in_class + panicer; }
inline int anotr::counter() { return p::counter(); }

int main(void) {
    ffmpef* base_class = new ffmpef(45);
    ffmpef_plus* fme = new ffmpef_plus(4);
}
