#include <stdio.h>
#include <stdlib.h>

int main(int argc, const char *argv[]) {
    FILE *fp = freopen("/tmp/wtf.txt", "a+", stdout);
    fprintf(stdout, "Hallo, World!\n");
    fprintf(stderr, "Hello, World!\n");
}

// Local Variables:
// compile-command: "clang -o a.out streams.c"
// End:
