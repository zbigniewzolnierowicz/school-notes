import os
# Zadanie 4.1
def factorize(number):
    if number == 1:
        return True;
    if number % 3 == 0:
        number /= 3
        number = int(number)
        return factorize(number)
    else:
        return False;

def silnia(number):
    counter = 2
    accumulator = 1
    while(counter <= number):
        accumulator *= counter
        counter += 1
    return accumulator

def isSumOfSilnia(number):
    numberString = str(number)
    accumulator = 0
    for num in numberString:
        num = int(num)
        accumulator += silnia(num)
    if number == accumulator:
        return True
    else:
        return False

file = open(os.path.dirname(__file__) + '/Dane/liczby.txt')
output = open(os.path.dirname(__file__) + '/wyniki.txt', 'a')
numbers = file.read().splitlines(False)

numbers = list(map(lambda x: int(x), numbers))
counter = 0

# Zadanie 4.1

for number in numbers:
    if factorize(number):
        counter += 1

output.write('Wynik do zad. 4.1: {}\n'.format(counter))
output.write('Wynik do zad. 4.2:\n')
for number in numbers:
    if isSumOfSilnia(number):
        output.write('\t{}\n'.format(number))
output.close()