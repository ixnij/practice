#include <stdio.h>
#include <stdlib.h>
#include <string.h>

void get_sytem_info();
void command_args(int args, const char *argv[], void (*fn)());

int main(int argc, const char *argv[]) {
    command_args(argc, argv, get_sytem_info);
    return 0;
}

void get_sytem_info() {
    const char *HOME = getenv("HOME");
    const char *PATH = getenv("PATH");
    const char *SHELL = getenv("SHELL");
    printf("--- BEGIN OF ENVIRONMENT VARIABLES ---\n\n");
    printf("Your HOME is: %s\nYour PATH: %s\nYour SHELL: %s\n\n", HOME, PATH,
	   SHELL);
    printf("--- END OF ENVIRONMENT VARIABLES ---\n");
}

void command_args(int args, const char *argv[], void (*fn)()) {
    if (args == 1)
	exit(1);
    else if (!strcmp(argv[1], "getenv")) {
	fn();
	printf("Success.\n");
    }
}

// Local Variables:
// compile-command: "clang -o a.out posix.c"
// End:
