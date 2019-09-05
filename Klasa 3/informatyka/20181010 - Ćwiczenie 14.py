def dzielniki(n):
    wynik = []
    for i in range(1, n):
        if n % i == 0:
            wynik.append(i)
    wynik.append(n)
    return wynik


def czyparzysta(n):
    if n % 2 == 0:
        return True
    else:
        return False


def wieksza(x, y):
    if x > y:
        return x
    elif x < y:
        return y
    else:
        return x

# TODO: zrobić funkcję sumującą cyfry w liczbie


dziel = int(input('Jakiej liczby potrzebujesz dzielniki? '))

print(dzielniki(dziel))

parzys = int(input('Wpisz liczbę do testu parzystości: '))

if czyparzysta(parzys) is True:
    print("Liczba parzysta")
else:
    print("Liczba nieparzysta")

wiekszX = int(input('Podaj pierwszą liczbę: '))
wiekszY = int(input('Podaj drugą liczbę: '))

print(wieksza(wiekszX, wiekszY))


