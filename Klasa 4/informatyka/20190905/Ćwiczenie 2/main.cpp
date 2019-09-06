#include <iostream>
#include <fstream>
using namespace std;

int main() {
    ifstream fin ("input.txt");
    int sum = 0;
    int num;
    for (;!fin.eof();) {
        fin >> num;
        sum += num;
    }
    cout<<"Sum: "<<sum<<endl;
    fin.close();
    return 0;
}