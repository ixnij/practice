#include <stdio.h>
#include <stdlib.h>
#include <string.h>

static int func () {
    printf ("[%s:%d]\n", __FUNCTION__, __LINE__);

    return 0;
}

int main (int args, char *argv[]) {

    func ();
    return 0;
}
