#include<iostream>
#include<fstream>
#include<cmath>
using namespace std;

int main() {
    fstream fin ("./input.txt");
    fstream fout ("./output.txt");
    int helper_number;
    while(!fin.eof()) {
        fin >> helper_number;
        fout << "<== " << helper_number <<" ==>\n";
        int d = 2;
        fout<<helper_number<<endl;
        while (helper_number > 1)
        {
            while(helper_number % d == 0)
            {
                helper_number = helper_number / d;
                fout<<helper_number<<endl;
            }
            d++;
        }
    }
    fin.close();
    fout.close();
}