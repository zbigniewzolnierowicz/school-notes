#include <iostream>
#include <cstdlib>
#include <ctime>

const int lenRow = 3;
const int lenCol = 4;

void write(int T[lenRow][lenCol], int lenRow, int lenCol) {
  for (int i = 0; i < lenRow; ++i) {
    for (int w = 0; w < lenCol; ++w) {
      T[i][w] = -7 + std::rand() % 27;
    }
  }
}

void read(int T[lenRow][lenCol], int lenRow, int lenCol) {
  for (int i = 0; i < lenRow; ++i) {
    for (int w = 0; w < lenCol; ++w) {
      std::cout<<T[i][w]<<" ";
    }
    std::cout<<std::endl;
  }
  std::cout<<std::endl;
}

int divide(int T[lenRow][lenCol], int lenRow, int lenCol, int divider) {
  int divide = 1;
  for (int i = 0; i < lenRow; ++i) {
    for (int w = 0; w < lenCol; ++w) {
      if (T[i][w] % divider != 0) {
        divide *= T[i][w];
      }
    }
  }
  return divide;
}

int countAboveZero(int lenRow, int lenCol) {
  int counter = 0;
  for (int i = 0; i < lenRow; ++i) {
    for (int w = 0; w < lenCol; ++w) {
      if (i * w != 0) counter++;
    }
  }
  return counter;
}

bool isItAboveValue(int T[lenRow][lenCol], int lenRow, int lenCol, int value) {
  for (int i = 0; i < lenRow; ++i) {
    for (int w = 0; w < lenCol; ++w) {
      if (T[i][w] >= value) { return true;} else { return false;};
    }
  }
  return false;
}


int main() {
  std::srand(std::time(0));
  int T[lenRow][lenCol];
  write(T, lenRow, lenCol);
  read(T, lenRow, lenCol);
  std::cout << "Iloczyn elementów niepodzielnych przez 7 równy jest "<< divide(T, lenRow, lenCol, 7) << std::endl;
  std::cout << "Elementy, których iloczyn indeksów jest dodatni: "<< countAboveZero(lenRow, lenCol) << std::endl;
  int value = 4;
  if (isItAboveValue(T, lenRow, lenCol, value)) {
    std::cout << "Istnieje element większy od "<< value << std::endl;
  } else {
    std::cout << "Nie istnieje element większy od "<< value << std::endl;
  }
}
