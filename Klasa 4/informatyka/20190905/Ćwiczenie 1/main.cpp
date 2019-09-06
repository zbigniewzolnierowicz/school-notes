#include <iostream>
#include <fstream>
using namespace std;

int main() {
    ifstream fin ("input.txt");
    int num;
    for (;!fin.eof();) {
        fin >> num;
        cout<<num * num<<endl;
    }
    fin.close();
    return 0;
}