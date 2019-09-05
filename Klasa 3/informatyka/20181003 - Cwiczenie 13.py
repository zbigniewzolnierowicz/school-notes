def fibonacciRecur(n):
    if n == 0:
        return 0
    if n <= 2:
        return 1
    return fibonacciRecur(n-1) + fibonacciRecur(n-2)


def fibonacciIter(n):
    if n == 0:
        return 0
    if n <= 2:
        return 1
    a = 0
    b = 1
    i = 2
    while i <= n:
        c = a + b
        a = b
        b = c
        i += 1
    return c


for i in range(0, 10):
    print("fibonacciIter", i, "=", fibonacciIter(i), "fibonacciRecur",
          i, "=", fibonacciRecur(i))
