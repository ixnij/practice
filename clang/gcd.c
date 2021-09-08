#include <stdio.h>

int gcd(const int* const a,const int* const b) {
    if (*a % *b == 0) {
        return *b;
    } else {
        const int c = *a % *b;
        return gcd(b, &c);
    }
}

int main() {
    int num_one = 30;
    int num_two = 60;
    printf("This is the result: %d\n", gcd(&num_one, &num_two));
}
