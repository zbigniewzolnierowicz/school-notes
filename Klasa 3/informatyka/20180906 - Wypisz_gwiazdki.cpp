#include <iostream>

int main()
{
    int i = 0, x;
    std::cin>>x;
    
    while(i < x) {
        std::cout<<"*";
        i++;
    }

    std::cout<<"\n";

    for(i = 0; i < x; i++)
    {
        std::cout<<"*";
    }
    
    return 0;
}