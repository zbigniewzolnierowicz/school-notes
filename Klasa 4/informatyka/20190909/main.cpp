#include<iostream>
#include<fstream>
#include<cmath>
using namespace std;

bool isPrime(int num) {
    for(int i = 2; i <= num / 2; ++i) {
        if(num % i == 0) {
            return true;
        }
    }
    return false;
}

int main() {
    fstream fin ("./liczby.txt");
    fstream fout ("./output.txt");
    int num;
    while(!fin.eof()) {
        fin >> num;
        fout<<num<<endl;
        if (isPrime(floor(sqrt(num)))) {
            fout<<"\tIs prime."<<endl;
        }
    }
    fin.close();
    fout.close();
}