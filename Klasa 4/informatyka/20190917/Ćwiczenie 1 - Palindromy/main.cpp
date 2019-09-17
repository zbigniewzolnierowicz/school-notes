#include<iostream>
#include<string>
#include<fstream>
using namespace std;

bool isPalindromeTwoPositions(string input) {
    int n = input.size() - 1;
    int j = n;
    int i = 0;
    while(i < j) {
        if (input[i] != input[j]) return false;
        i++;
        j--;
    }
    return true;
}

bool isPalindromeSubtractFromLength(string input) {
    int n = input.size() - 1;
    for (int i = 0; i < n/2; i++)
    {
        if (input[i] != input[n-i])
        {
            return false;
        }
        
    }
    return true;
}

bool isPalindromeCompareStrings(string input) {
    string compare = "";
    int n = input.size() - 1;
    for (int i = n; i >= 0; i--)
    {
        compare += input[i];
    }
    
    if (input == compare) return true; else return false;
    
}

int main() {
    string word;
    fstream fin("input.txt");
    ofstream fout("output.txt");
    while (!fin.eof())
    {
        fin >> word;
        fout<<word<<endl;
        fout<<"\tFunkcja z dwoma pozycjami"<<endl;
        if (isPalindromeTwoPositions(word)) {
            fout<<"\t\tSłowo "<<word<<" to palindrom."<<endl;
        } else {
            fout<<"\t\tSłowo "<<word<<" to nie palindrom."<<endl;
        }
        fout<<"\tFunkcja z odejmowaniem od długości"<<endl;
        if (isPalindromeSubtractFromLength(word)) {
            fout<<"\t\tSłowo "<<word<<" to palindrom."<<endl;
        } else {
            fout<<"\t\tSłowo "<<word<<" to nie palindrom."<<endl;
        }
        fout<<"\tFunkcja z porównywaniem ciągów"<<endl;
        if (isPalindromeCompareStrings(word)) {
            fout<<"\t\tSłowo "<<word<<" to palindrom."<<endl;
        } else {
            fout<<"\t\tSłowo "<<word<<" to nie palindrom."<<endl;
        }
    }
    return 0;
}