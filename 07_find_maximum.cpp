// Program to find the maximum of three numbers
// Compare three numbers and find which one is biggest

#include <iostream>
using namespace std;

int main() {
    int a = 10, b = 25, c = 15;
    int max = a;
    if (b > max) max = b;
    if (c > max) max = c;
    cout << "Max: " << max << endl;
    return 0;
}
