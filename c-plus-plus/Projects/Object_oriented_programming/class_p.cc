#include "class_p.h"

inline int anotr::max(int one, int two) { 
    return one > two ? one : two; 
}

inline int p::counter() { 
    return private_variable_in_class + panicer; 
}

inline int anotr::counter() {
    return p::counter(); 
}
