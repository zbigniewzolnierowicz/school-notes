#include <iostream>

int main()
{
    int n;
    std::cout << "Ile elementów?" << std::endl;
    std::cin >> n;
    int *t = new int [n];
    for (int i=0; i < n; i++) std::cin >> t[i];
    std::cout<<"Wpisano: "<<std::endl;
    for (int i=0; i < n; i++) std::cout<<t[i]<<std::endl;
    delete [] t;
    return 0;
}
