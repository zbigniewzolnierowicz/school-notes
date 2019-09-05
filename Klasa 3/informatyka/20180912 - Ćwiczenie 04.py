import math

def pattern(amount, pattern):
    print(pattern * amount)

def square(a):
    return a*a

pattern(int(input("How much? ")),input("What do you want to be printed? "))
print(
    square(int(
        input("What do you want squared? "))
    )
)