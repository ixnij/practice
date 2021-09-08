#include <cstdio>

int main() {
    double num;
    scanf("%lf", &num);
    double l = 1e-5, r = 1e5;
    while (r - l > 1e-8) {
        double mid = (l + r) / 2;
        if (mid * mid * mid <= num) {
            l = mid;
        } else {
            r = mid;
        }
    }
    std::printf("%lf", r);
}
