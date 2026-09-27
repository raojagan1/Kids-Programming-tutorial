// Program to check if a number is even or odd
// A number is even if it's divisible by 2 (remainder is 0)

#include <iostream>
using namespace std;

int main() {
    int n = 7;
    if (n % 2 == 0) {
        cout << "Even" << endl;
    } else {
        cout << "Odd" << endl;
    }
    return 0;
}
