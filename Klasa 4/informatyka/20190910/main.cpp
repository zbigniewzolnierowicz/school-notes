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

bool perfnum(int x) {
    int y = x;
    int d = 1;
    int accumulator = 0;
    while (d != y) {
        if (y % d == 0) {
            accumulator += d;
        }
        d++;
    }
    if (x == accumulator) {
        return true;
    }
    return false;
}

bool smithnum(int x) {
    return false;
}

int main() {
    fstream fin("input.txt");
    ofstream fout("output.txt", ios::app);
    int x;
    while (!fin.eof()) {
        fin >> x;
        fout << x << endl;
        if (perfnum(x)) {
            fout << "\tJest liczbą idealną" << endl;
        }
        if (smithnum(x)){
            fout << "\tJest liczbą Smitha" << endl;
        }
    }
}