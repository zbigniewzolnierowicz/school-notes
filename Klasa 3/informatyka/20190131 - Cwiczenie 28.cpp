#include <iostream>

void read(int T[4][5], int lenRow, int lenCol) {
  for (int i = 0; i < lenRow; ++i) {
    for (int w = 0; w < lenCol; ++w) {
      std::cout<<T[i][w]<<" ";
    }
    std::cout<<std::endl;
  }
  std::cout<<std::endl;
}

void deleteRow(int T[4][5], int lenRow, int lenCol, int delRow) {
std::cout << "Deleting row number " << delRow << "." << std::endl;
// if you delete T[0]
// T[0] = T[1]
// T[1] = T[2]
// T[2] = T[3]
// T[3] = {0,0,0,0,0}
// if you delete T[1]
// T[1] = T[2]
// T[2] = T[3]
// T[3] = {0,0,0,0,0}
for (int i = delRow; i < lenRow; ++i) {
  if(i != lenRow - 1) {
    for (int w = 0; w < lenCol; ++w) {
      std::cout << "Swapping "<<T[i][w]<<" for "<<T[i+1][w] << std::endl;
      T[i][w] = T[i+1][w];
    }
  } else {
    for (int w = 0; w < lenCol; ++w) {
      std::cout << "Swapping "<<T[i][w]<<" for 0"<< std::endl;
      T[i][w] = 0;
    }
  }
}
}

int main() {
  const int lenRow = 4;
  const int lenCol = 5;
  int T[lenRow][lenCol] = {
    {1,2,3,4,5},
    {6,7,8,9,10},
    {11,12,13,14,15},
    {16,17,18,19,20}
  };
  read(T, lenRow, lenCol);
  int delRow;
  std::cin >> delRow;
  deleteRow(T, lenRow, lenCol, delRow);
  read(T, lenRow, lenCol);
}
