#include <iostream>
#include <cstdlib>
#include <ctime>

const int n = 5;

void randomize(int *array, int numElements) {
  for(int i=0; i<numElements; i++){
    array[i] = (rand()%100)+1;
  }
}

void read(int *array, int numElements) {
  for (int i = numElements - 1; i >= 0; i--)
    std::cout << array[i] << "\t";
  std::cout<<std::endl;
}

void sort(int *array, int numElements) {
  for (int i = 0; i < numElements; ++i) {
    int pom = array[i];
    int k = i-1;
    while (k >= 0 && array[k] > pom) {
      array[k+1] = array[k];
      k--;
    }
    array[k+1] = pom;
  }
}

int main() {
  std::srand(std::time(0));
  int t[n];
  randomize(t,n);
  read(t,n);
  sort(t,n);
  read(t,n);
}
