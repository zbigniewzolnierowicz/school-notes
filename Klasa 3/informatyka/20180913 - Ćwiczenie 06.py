def powr(x,y):
    z = 1
    i = 1
    while i <= y:
        z = x*z
        i+=1
    return z

number = int(input("Co chcesz spotęgować? "))
power = int(input("O ile chcesz spotęgować? "))

print(powr(number,power))