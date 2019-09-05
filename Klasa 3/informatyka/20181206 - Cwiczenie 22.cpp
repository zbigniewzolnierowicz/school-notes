#include<iostream>

int main()
{
  int n;
  std::cin>>n;
  int d=2;
  while(n>1) {
    int i = 0;
    while (n%d==0) {
      if (i==0) std::cout<<d;
      n=n/d;
      i++;
    }
    if (i!=0) std::cout<<"^"<<i<<std::endl;
    d++;
  }
  return 0;
}
