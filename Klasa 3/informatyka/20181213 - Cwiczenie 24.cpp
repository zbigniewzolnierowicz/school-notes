#include <iostream>
#include <ctime>
#include <cstdlib>

int generate()
{
  int x = std::rand() % 10;
  return x;
}

int *findOccurence(int countOfT, int T[], int occurence[]) {
  for (int i = 0; i <= countOfT; ++i) {
    int x = T[i];
    occurence[x]++;
  }
  return occurence;
}

int findMax(int occurence[]) {
  std::cout<<occurence[0]<<std::endl;
  int max = occurence[0];
  for (int i = 1; i <= 9; ++i) {
  std::cout<<"Checking if "<<occurence[i]<<" is larger than "<<max<<std::endl;
    if (max == occurence[i]) {
      std::cout<<"No most occurence"<<std::endl;
      return max;
    } else if (max <= occurence[i]) {
      max = occurence [i];
    }
  }
  return max;
}


int main()
{
  srand(time(0));
  int n = 15;
  int values[n];
  int occurence[10] = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
  for (int i = 0; i <= n; ++i) {
    values[i] = generate();
    std::cout<<values[i]<<std::endl;
  }
  findOccurence(n, values, occurence);
  for (int i = 0; i < 10; ++i) {
    std::cout<<"Count of "<<i<<" = "<<occurence[i]<<std::endl;
  }
  std::cout<<"Max: "<<findMax(occurence)<<std::endl;
  return 0;
}
