// Program to count the number of digits in a number
// For example, 12345 has 5 digits
// We remove one digit at a time using division by 10

#include <stdio.h>

int main(void) {
    int n = 12345;
    int count = 0;
    while (n > 0) {
        count++;
        n = n / 10;
    }
    printf("Number of digits: %d\n", count);
    return 0;
}
