def abs(number):
    if(number >= 0):
        return number
    else:
        return -number

numberThatNeedsToBeAbsolute = int(input("What number do you want to be absolute? "))

print(abs(numberThatNeedsToBeAbsolute))