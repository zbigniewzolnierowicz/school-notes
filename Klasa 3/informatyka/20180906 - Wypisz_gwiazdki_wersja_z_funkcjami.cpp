#include <iostream>

void gwiazdki(int n) {
    int i;
    for(i = 0; i < n; i++)
    {
        std::cout<<"*";
    }

}

int main()
{
    int n;
    std::cout<<"Wpisz liczbę gwiazdek: ";
    std::cin>>n;
    gwiazdki(n);
    return 0;
}
