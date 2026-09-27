// Program to check if a number is even or odd
// A number is even if it's divisible by 2 (remainder is 0)

#include <stdio.h>

int main(void) {
    int n = 7;
    if (n % 2 == 0) {
        printf("Even\n");
    } else {
        printf("Odd\n");
    }
    return 0;
}
