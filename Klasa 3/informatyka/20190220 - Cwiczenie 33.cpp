#include <iostream>
#include <cstdlib>
#include <ctime>

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

int main() {
  srand(time(0));
  const int n = 5;
  int t[n];
  randomize(t,n);
  read(t,n);
  for (int i=0; i<n-1; i++) {
    int min = t[i];
    int k=i;
    for (int j=i+1; j<n; j++)
      if (t[j]<min) k=j;
    std::swap(t[i],t[k]);
    read(t,n);
  }
}
