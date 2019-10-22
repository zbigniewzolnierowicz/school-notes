def squareRoot(a, exactness = 0):
    p = a
    while(abs(a-(p/a)) > exactness):
        a = (a + (p/a))/2
    return a

print(squareRoot(125, 0.001))