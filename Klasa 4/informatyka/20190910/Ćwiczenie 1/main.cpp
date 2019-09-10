#include <iostream>
#include <fstream>
using namespace std;

int sumNum(int x) {
    int accumulator = 0;
    while (x /= 10 != 0) {
        accumulator += x % 10;
        x /= 10;
    }
    return accumulator;
}

int main() {
    int x;
    ofstream fout("output.txt", ios::app);
    cin>>x;
    fout << "Suma cyfr liczby " << x << " to " << sumNum(x) << endl;
}