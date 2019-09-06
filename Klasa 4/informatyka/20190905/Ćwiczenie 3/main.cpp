#include<iostream>
#include<fstream>

using namespace std;

int findNWD(int num1, int num2) {
    if (num2 > num1) {
        while(num2!=num1)
       if(num1>num2)
           num1-=num2;
       else
           num2-=num1;
        return num1;
    } else {
        while(num1!=num2)
        if(num1>num2)
            num1-=num2;
        else
            num2-=num1;
        return num1;
    }
    
}

int findNWW(int num1, int num2) {
    return num1 + num2;
}

int main() {
    fstream fin ("./input.txt");
    while (!fin.eof()) {
        int num1, num2;
        fin>>num1;
        fin>>num2;
        cout<<"Najmniejszy wspólny dzielnik dla "<<num1<<" i "<<num2<<" to "<<findNWD(num1, num2)<<endl;
    }
    
    fin.close();
}