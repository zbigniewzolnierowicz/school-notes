#include <iostream>
#include <ctime>
#include <cstdlib>

int generateRand() {
	int x = std::rand() % 100;
	return x;
}

int max(int t[], int lengthOfArray) {
	int maximum = t[0];
	for (int i = 0; i < lengthOfArray; ++i) {
		if (t[i] > maximum) {
			maximum = t[i];
		} else {
			continue;
		}
	}
	return maximum;
}

int min(int t[], int lengthOfArray) {
	int minimum = max(t,lengthOfArray);
	for (int i = 0; i < lengthOfArray; ++i) {
		if (t[i] < minimum) {
			minimum = t[i];
		} else {
			continue;
		}
	}
	return minimum;
}

int main()
{
	std::srand(std::time(0));
	int lengthOfArray = 10;
	int array[lengthOfArray];
	for (int i = 0; i < lengthOfArray; ++i) {
		array[i] = generateRand();
	}
	for (int i = lengthOfArray - 1; i >= 0; i--)
		std::cout << array[i] << ", ";
	std::cout<<std::endl;
	std::cout<<"Biggest: "<<max(array,lengthOfArray)<<std::endl;
	std::cout<<"Smallest: "<<min(array,lengthOfArray)<<std::endl;
	return 0;
}
