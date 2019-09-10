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
        if (!isPrime(num)) {
            fout<<num;
        } else {
            fout<<num<<endl;
            fout<<"\t"<<floor(sqrt(num))<<endl;
            if (!isPrime(floor(sqrt(num)))) {
                fout<<"\tIs prime."<<endl;
            }
        }
        fout<<endl;
    }
    fin.close();
    fout.close();
}