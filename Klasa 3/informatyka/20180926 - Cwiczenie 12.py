def ciagPierwszy(n):
    if n == 0:
        return 4
    return ciagPierwszy(n-1)+3

def ciagDrugi(n):
    if n == 0:
        return 0.2
    return ciagDrugi(n-1)*-3

def ciagTrzeci(n):
    if n == 1:
        return 0.5
    elif n==2:
        return 1
    else:
        return 3 * ciagTrzeci(n-2) + ciagTrzeci(n-1)

print(ciagPierwszy(10))
print(ciagDrugi(3))
print(ciagDrugi(3))