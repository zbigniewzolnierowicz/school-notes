def function(x):
    return x**2 - x - 3

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

def calkaTrapez(p, q, dl, n):
    sumOfFields = 0
    i = 1
    while (i < n):
        sumOfFields += function(p+i * dl)
        i += 1
    return dl/2*(abs(function(p))+abs(function(q))+2*sumOfFields)

def calkaProstokat(p, q, dl, n):
    i = 1
    sumOfFields = 0
    while (i <= n):
        sumOfFields += function(p+(i-1)*dl+(0.5*dl))*dl
        i += 1
    return sumOfFields

def calkaProstokatNiedomiarNadmiar(p, q, dl, n, nied_nad = True):
    i = 1
    sumOfFields = 0
    while (i <= n):
        fieldForLeft = function(p + (i - 1) * dl)*dl
        fieldForRight = function(p+ i * dl) * dl
        if (nied_nad):
            if fieldForLeft < fieldForRight:
                sumOfFields += fieldForLeft
            else:
                sumOfFields += fieldForRight
        else:
            if fieldForLeft < fieldForRight:
                sumOfFields += fieldForRight
            else:
                sumOfFields += fieldForLeft
        i += 1
    return sumOfFields

print('Całka obliczona trapezami: {}'.format(calkaTrapez(p, q, dl, n)))
print('Całka obliczona prostokątami: {}'.format(calkaProstokat(p, q, dl, n)))
print('Całka obliczona prostokątami (niedomiar): {}'.format(calkaProstokatNiedomiarNadmiar(p, q, dl, n, True)))
print('Całka obliczona prostokątami (nadmiar): {}'.format(calkaProstokatNiedomiarNadmiar(p, q, dl, n, False)))