#include<iostream>
#include<fstream>

using namespace std;

int findNWD(int num1, int num2) {
    int pom;
  	while(num2!=0)
	{
    	pom = num2;
    	num2 = num1%num2;
    	num1 = pom;  
  	}
    return num1;
}

int findNWW(int num1, int num2) {
    return (num1 * num2)/findNWD(num1, num2);
}

int main() {
    fstream fin ("./input.txt");
    while (!fin.eof()) {
        int num1, num2;
        fin>>num1;
        fin>>num2;
        cout<<"Największy wspólny dzielnik dla "<<num1<<" i "<<num2<<" to "<<findNWD(num1, num2)<<endl;
        cout<<"Najmniejsza wspólna wielokrotność dla "<<num1<<" i "<<num2<<" to "<<findNWW(num1, num2)<<endl;
    }
    
    fin.close();
}