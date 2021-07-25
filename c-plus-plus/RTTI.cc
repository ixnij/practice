#include <iostream>

class p {
    int private_variable_in_class;
    public:
        p(int arg) : private_variable_in_class(arg) {  }
        p() : private_variable_in_class(1) { }
        virtual ~p();
        virtual int pointered(int* p) = 0;
        virtual int max(int, int) = 0;
};

class anotr : public p {
    public:
        virtual pointered(int* p) { return *p; }
        virtual inline int max(int, int);
};

inline int anotr::max(int one, int two) { return one > two ? one : two; }

int main() {  }
