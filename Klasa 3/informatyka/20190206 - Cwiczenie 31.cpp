#include <iostream>

int main() {
  int y, x;
  std::cout<<"Ile wierszy? ";
  std::cin>>y;
  std::cout<<std::endl<<"Ile kolumn? ";
  std::cin>>x;
  std::cout<<std::endl;
  int* *t=new int* [x];
  for (int j=0; j<x; j++) t[j] = new int [y];

  for (int i=0; i < y; i++)
    for (int j=0; j < x; j++)
      std::cin>>t[i][j];

  for (int i=0; i < y; i++) {
    for (int j=0; j < x; j++)
      std::cout<<t[i][j]<<" ";
    std::cout<<std::endl;
  }
  for (int i=0; i < y; i++) delete [] t[i];
  delete [] t;
}
