def function(x):
    return x**2 - x - 3

sumOfFields = 0
i = 1
p = int(input('Początek funkcji: '))
q = int(input('Koniec funkcji: '))
n = 0
temp = input('Dokładność funkcji: ')
if temp == '':
    n = 1
else:
    n = int(temp)
dl = (q - p) / n
while (i < n):
    sumOfFields += abs(function(p+i*dl))
    i += 1
totalField = dl/2*(abs(function(p))+abs(function(q))+2*sumOfFields)
print(totalField)