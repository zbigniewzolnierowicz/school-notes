#include <iostream>
using namespace std;

int odwroc (int n) {
	int rem, reverse = 0;
	while(n!=0) {
		rem = n%10;
		reverse = reverse*10+rem;
		n/=10;
	}
	return reverse;
}

int main() {
	int liczba = 537;
	cout<<"Odwrocona liczba " << liczba << " to " << odwroc(liczba) <<"."<<endl;
}
