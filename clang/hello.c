#include <stdio.h>
#include <math.h>

int main(void) {
    fprintf(stdout, "Hello, World!\n");
    double a = acos(20.1);
    fprintf(stderr, "%f\n", a);
    return 0;
}

// Local Variables:
// compile-command: "clang -o a.out hello.c"
// End:
