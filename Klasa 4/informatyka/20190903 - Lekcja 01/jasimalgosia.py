a = [5,99,3,7,111,13,4,24,4,8]
def findFirstEven(table):
    for a in table:
        print("Testing: ", a)
        if a % 2 == 0:
            return a
        else:
            print("Not even")
print(findFirstEven(a))