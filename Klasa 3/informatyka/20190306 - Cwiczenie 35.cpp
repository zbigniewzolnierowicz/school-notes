#include <iostream>

const int length = 8;

int main() {
  int T[length] = {8, 2, 3, 5, 2, 1, 3, 2};
  for (int i = 0; i < length; ++i) {
    std::cout<<T[i]<<std::endl;
  }
}
