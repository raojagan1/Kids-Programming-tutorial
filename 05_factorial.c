// Program to calculate factorial of a number
// Factorial of 5 = 5 × 4 × 3 × 2 × 1 = 120

#include <stdio.h>

int main(void) {
    int n = 5;
    int factorial = 1;
    for (int i = 1; i <= n; i++) {
        factorial = factorial * i;
    }
    printf("%d! = %d\n", n, factorial);
    return 0;
}
