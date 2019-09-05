#include <iostream>
#include <cstdlib>
#include <ctime>

void write(int T[5][5], int lenRow, int lenCol) {
  for (int i = 0; i < lenRow; ++i) {
    for (int w = 0; w < lenCol; ++w) {
      T[i][w] = -20 + std::rand() % 68;
    }
  }
}

void read(int T[5][5], int lenRow, int lenCol) {
  for (int i = 0; i < lenRow; ++i) {
    for (int w = 0; w < lenCol; ++w) {
      std::cout<<T[i][w]<<" ";
    }
    std::cout<<std::endl;
  }
  std::cout<<std::endl;
}

void sort(int T[5][5], int lenRow, int lenCol) {
  for (int i = 0; i < lenRow; ++i) {
    for (int j = 0; j < lenCol - 1; j++) {
      for (int w = 0; w < lenCol - 1; ++w) {
        if (T[i][w]>T[i][w+1]) std::swap(T[i][w], T[i][w+1]);
      }
    }
  }
}

int findMin (int T[5], int lenCol) {
  int min = T[0];
  for (int i = 1; i < lenCol; ++i) {
   if (T[i] < min) {
     min = T[i];
   }
  }
  return min;
}

void findOccurence (int T[5][5], int lenRow, int lenCol) {
  for (int i=0; i < lenRow; ++i) {
    int min = findMin(T[i], lenRow);
    std::cout<<"Smallest number: "<<min<<std::endl;
    int counter = 0;
    for (int w = 0; w < lenCol; ++w) {
      if (T[i][w] == min) {
        counter++;
      }
    }
    std::cout<<"Counter of "<<min<<" for table row "<< i <<":"<<counter<<std::endl;
  }
}

void swap(int T[5][5], int lenRow, int lenCol) {
  for (int i = 0; i < lenRow || i < lenCol; ++i) {
    int helper;
    helper = T[2][i];
    T[2][i] = T[i][2];
    T[i][2] = helper;
  }
}

int main() {
  std::srand(std::time(0));
  int T[5][5], lenRow = 5, lenCol = 5;
  write(T, lenRow, lenCol);
  std::cout<<"Tablica:"<<std::endl<<std::endl;
  read(T, lenRow, lenCol);
  sort(T, lenRow, lenCol);
  std::cout<<"Posortowana niemalejąco:"<<std::endl<<std::endl;
  read(T, lenRow, lenCol);
  findOccurence(T, lenRow, lenCol);
  swap(T, lenRow, lenCol);
  std::cout<<std::endl;
  read(T, lenRow, lenCol);
}
