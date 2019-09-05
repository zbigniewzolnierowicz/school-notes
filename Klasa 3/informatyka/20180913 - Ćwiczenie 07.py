def nwd(x,y):
    while x != y:
        if x > y:
            x-=y
        else:
            y-=x
    return x
    
first = int(input("Pierwsza liczba: "))
second = int(input("Liczba, której chcesz otrzymać najmniejszy wspólny dzielnik: "))
print(nwd(first,second))