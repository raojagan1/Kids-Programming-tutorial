// Program to calculate sum of numbers from 1 to 100
// Using a WHILE loop instead of FOR loop
// 1 + 2 + 3 + ... + 100 = 5050

#include <stdio.h>

int main(void) {
    int i = 1, sum = 0;
    while (i <= 100) {
        sum = sum + i;
        i++;
    }
    printf("Sum: %d\n", sum);
    return 0;
}
