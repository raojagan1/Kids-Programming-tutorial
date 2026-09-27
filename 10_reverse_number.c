// Program to reverse a number
// For example, 12345 becomes 54321
// We build the reversed number by taking last digit each time

#include <stdio.h>

int main(void) {
    int n = 12345;
    int reversed = 0;
    while (n > 0) {
        reversed = reversed * 10 + n % 10;
        n = n / 10;
    }
    printf("Reversed: %d\n", reversed);
    return 0;
}
