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

def nwd(a, b):
    while b:
        a, b = b, a%b
    return a

def findChain(numbers):
    nwd_value = numbers[0]
    startingIndex = 1
    lengthOfChain = 1
    startOfLongestChain = 0
    longestLengthOfChain = lengthOfChain
    nwdOfLongestChain = nwd_value
    i = 1
    while (i < len(numbers)):
        if nwd(nwd_value, numbers[i]) != 1:
            lengthOfChain += 1
        else:
            nwd_value = nwd(numbers[i - 1], numbers[i])
            startingIndex = i
            lengthOfChain = 1
        if lengthOfChain > longestLengthOfChain:
            startOfLongestChain = startingIndex
            longestLengthOfChain = lengthOfChain
            nwdOfLongestChain = nwd_value
        i += 1
    return { 'startOfChain': startOfLongestChain, 'firstNumberOfChain': numbers[startOfLongestChain - 1], 'lengthOfChain': longestLengthOfChain + 1, 'nwdOfChain': nwdOfLongestChain }

file = open(os.path.dirname(__file__) + '/Dane/liczby.txt')
output = open(os.path.dirname(__file__) + '/wyniki.txt', 'a')
numbers = file.read().splitlines(False)

numbers = list(map(lambda x: int(x), numbers))
counter = 0

# Zadanie 4.1

for number in numbers:
    if factorize(number):
        counter += 1

# output.write('Wynik do zad. 4.1: {}\n'.format(counter))
# output.write('Wynik do zad. 4.2:\n')
# for number in numbers:
#     if isSumOfSilnia(number):
#         output.write('\t{}\n'.format(number))
# output.write('Wynik do zad. 4.3:\n')
print(findChain(numbers))
output.close()