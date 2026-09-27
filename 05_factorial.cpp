// Program to calculate factorial of a number
// Factorial of 5 = 5 × 4 × 3 × 2 × 1 = 120

#include <iostream>
using namespace std;

int main() {
    int n = 5;
    int factorial = 1;
    for (int i = 1; i <= n; i++) {
        factorial = factorial * i;
    }
    cout << n << "! = " << factorial << endl;
    return 0;
}
