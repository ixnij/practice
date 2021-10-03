#include <stdio.h>
#include <stdlib.h>

const char *Prompt = "Ghci";

int main(int argc, const char *argv[]) {
    int *p = (int *)malloc(sizeof(int));
    *p = 20;
    printf("%d\n", *p);
    free(p);
    int *ya = (int *)malloc(20 * sizeof(int));
    for (int i = 0; i < 20; ++i) {
      printf("%s [%d]> ", Prompt, i + 1);
	scanf("%d", &ya[i]);
    }
    for (int i = 0; i < 19; ++i) {
	ya[i] *= ya[i + 1];
    }
    printf("%d\n", ya[18]);
    free(ya);
}
