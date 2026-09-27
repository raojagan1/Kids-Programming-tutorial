// Program to count the number of digits in a number
// For example, 12345 has 5 digits
// We remove one digit at a time using division by 10

#include <iostream>
using namespace std;

int main() {
    int n = 12345;
    int count = 0;
    while (n > 0) {
        count++;
        n = n / 10;
    }
    cout << "Number of digits: " << count << endl;
    return 0;
}
