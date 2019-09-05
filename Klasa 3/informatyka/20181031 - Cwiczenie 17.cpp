#include <iostream>

void wieze(int n, char x, char y, char z) {
	if (n == 1) {
//		std::cout << "x = " << x << " y = " << y << " z = " << z << std::endl;
		std::cout << x << " ==> " << y << std::endl;
	} else {
//		std::cout << "x = " << x << " y = " << y << " z = " << z << std::endl;
		wieze(n - 1, x, z, y);
		std::cout << x << " ==> " << y << std::endl;
		wieze(n - 1, z, y, x);
	}
}

int main()
{
	int n;
	std::cout << "Podaj liczbę krążków: ";
	std::cin >> n;
	wieze(n, 'A', 'B', 'C');
	return 0;
}
