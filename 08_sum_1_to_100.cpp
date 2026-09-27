// Program to calculate sum of numbers from 1 to 100
// Using a WHILE loop instead of FOR loop
// 1 + 2 + 3 + ... + 100 = 5050

#include <iostream>
using namespace std;

int main() {
    int i = 1, sum = 0;
    while (i <= 100) {
        sum = sum + i;
        i++;
    }
    cout << "Sum: " << sum << endl;
    return 0;
}
