// Program to print multiplication table
// This prints 5 × 1, 5 × 2, 5 × 3, ... up to 5 × 10

#include <iostream>
using namespace std;

int main() {
    int n = 5;
    for (int i = 1; i <= 10; i++) {
        cout << n << " x " << i << " = " << n * i << endl;
    }
    return 0;
}
