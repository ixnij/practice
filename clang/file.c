#include <stdio.h>
#include <stdlib.h>

int main(int argc, const char *argv[]) {
    char *filename = "/tmp/log.c";
    FILE *fp = fopen(filename, "r");

    if (fp == NULL) {
	printf("%s:%s : No such file.\n", argv[0], filename);
	exit(EXIT_FAILURE);
    } else {
	printf("Has file.\n");
    }
}

// Local Variables:
// compile-command: "clang -o a.out file.c"
// End:
