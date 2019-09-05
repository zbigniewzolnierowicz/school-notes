#include<iostream>

bool czyMalejaca(int t[], int len);

int main() {
	int x = 10;
	int tablica[x];
	std::cout<<"Podaj "<<x<<" liczb."<<std::endl;
	for(int i = 0; i <= x; i++) {
		std::cin>>tablica[i];
	}
	for(int i = 0; i <= x; i++){
		std::cout<<tablica[i]<<" ";
	}
	if (czyMalejaca(tablica, x)) {
		std::cout<<"Liczba malejaca"<<std::endl;
	} else {
		std::cout<<"Liczba niemalejaca"<<std::endl;
	}
	return 0;
}

bool czyMalejaca(int t[], int len) {
	for (int i=0; i < len; i++) {
		if(t[i] >= t[i-1]) return false;
	}
	return true;
}
