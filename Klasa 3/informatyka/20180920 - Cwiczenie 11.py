def rekursilnia(n):
    if n == 0:
        return 1
    return rekursilnia(n-1)*n


def silnia(n):
    s = 1
    i = 1
    while i <= n:
        s *= i
        i += 1
    return(s)


number = int(input("Ktorej liczby potrzebujesz silnie? "))

print("Obliczona normalnie:", str(number) + "! =", silnia(number))
print("Obliczona rekurencyjnie: Silnia liczby", str(number) + "! =", rekursilnia(number))
