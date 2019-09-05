#include <iostream>
using namespace std;

bool sprawdz (int n)
{
	for (int i = 2; i < n; i++) {
		if (n%i==0) return false;
	}
	return true;
}

void wypisz (int n)
{
	int j=0;
	for(int i=2; j < n; i++){
		if(sprawdz(i) == 1) {
			cout<<i<<" ";
			j++;
		}
	}
}

int main()
{
	wypisz(100);
}
