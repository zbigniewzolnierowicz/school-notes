#include <iostream>
#include <fstream>
using namespace std;

int main() {
    ifstream fin ("input.txt");
    int sum;
    for (; !fin.eof();) {
        fin >> x;
        cout<<x * x<<endl;
    }
    fin.close();
    return 0;
}