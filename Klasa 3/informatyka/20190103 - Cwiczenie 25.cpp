#include<iostream>
#include<string>

void write(int T[5][6], int lenRow, int lenCol) {
  for (int i = 0; i < lenRow; ++i) {
    for (int w = 0; w < lenCol; ++w) {
      T[i][w] = i * w;
    }
  }
}

void read(int T[5][6], int lenRow, int lenCol) {
  for (int i = 0; i < lenRow; ++i) {
    for (int w = 0; w < lenCol; ++w) {
      std::cout<<T[i][w]<<" ";
    }
    std::cout<<std::endl;
  }
  std::cout<<std::endl;
}

void swap(int T[5][6], int lenRow) {
  int temp;
  for(int row=0;row<lenRow;row++) {
    temp = T[row][1];
    T[row][1]=T[row][2];
    T[row][2]=temp;
  }
}

void swapUserDefined(int T[5][6], int y, int swapFrom, int swapTo) {
  int temp;
  for (int i = 0; i < y; ++i) {
    temp = T[swapFrom][i];
    T[swapFrom][i] = T[swapTo][i];
    T[swapTo][i] = temp;
  }
}

int main()
{
  const int lenRow = 5, lenCol = 6;
  int Table[lenRow][lenCol];
  write(Table, lenRow, lenCol);
  read(Table, lenRow, lenCol);
  swap(Table, lenRow);
  read(Table, lenRow, lenCol);
  int swapRowFrom, swapRowTo;
  std::cin>>swapRowFrom;
  std::cin>>swapRowTo;
  swapUserDefined(Table, lenCol, swapRowFrom, swapRowTo);
  read(Table, lenRow, lenCol);
  return 0;
}
