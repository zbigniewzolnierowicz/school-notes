def sumaDzielnikow(n):
    suma = 1
    for i in range(2, n):
        if(n % i == 0):
            suma += i
    return suma


def czyZaprzyjaznione(num1, num2):
    if(num1 == sumaDzielnikow(num2)) and (num2 == sumaDzielnikow(num1)) and (num1 != num2):
        return True
    else:
        return False


numberOne = int(input("Podaj pierwsza liczbe: "))
numberTwo = int(input("Podaj druga liczbe: "))

print(czyZaprzyjaznione(numberOne, numberTwo))
