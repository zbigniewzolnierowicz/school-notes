#include<iostream>
using namespace std;

void pattern(int amount, string pattern){
    for(int i=0; i<amount; i++){
        cout<<pattern;
    }
}

int main(){
    pattern(7,"*-");
    return 0;
}
