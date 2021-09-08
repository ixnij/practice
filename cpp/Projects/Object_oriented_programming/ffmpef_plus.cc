#include "ffmpef_plus.h"

ffmpef_plus& ffmpef_plus::operator=(ffmpef_plus&& f) {
    if ( f.ptr_newer == this -> ptr_newer && f.cont == this -> cont) {
        return *this;
    }
    delete this -> ptr_newer;
    this -> ptr_newer = f.ptr_newer;
    f.ptr_newer = (int*)0;
    this -> cont = f.cont;
    return *this;
}
