#include <iostream>


void write(int T[4][3], int lenRow, int lenCol) {
  int helper = 1;
  for (int i = 0; i < lenRow; ++i) {
    for (int w = 0; w < lenCol; ++w) {
      T[i][w] = helper;
      if (w == lenCol - 1) {
        helper++;
      } else {
        helper += 2;
      }
    }
  }
}

void read(int T[4][3], int lenRow, int lenCol) {
  for (int i = 0; i < lenRow; ++i) {
    for (int w = 0; w < lenCol; ++w) {
      std::cout<<T[i][w]<<" ";
    }
    std::cout<<std::endl;
  }
  std::cout<<std::endl;
}

int main()
{
  int T[4][3], y=4, x=3;
  write(T, y, x);
  read(T, y, x);
  return 0;
}
