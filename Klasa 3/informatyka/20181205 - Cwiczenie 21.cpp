#include<iostream>

void generuj(int T[], int n) {
  int i, m;
  for (i=2;i<=n;i++) T[i]=1;
  i = 2;
  while (i<=n) {
    m=2*i;
    while (m<=n) {
      T[m]=0;
      m+=i;
    }
    do i++; while (T[i]==0 && i<=n);
  }
  for (int i = 0; i < n; ++i) {
    std::cout<<i<<" ";
    if (T[i] == 0) {
      std::cout<<"złożona";
    } else {
      std::cout<<"pierwsza";
    }
      std::cout<<std::endl;
  }
}

int main() {
  int n = 1000;
  int table[n];
  for (int i = 0; i <= n; ++i) table[i] = i;
  generuj(table, n);
}
