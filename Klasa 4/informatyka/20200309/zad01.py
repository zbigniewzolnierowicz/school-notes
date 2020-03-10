import random
numbers = [5, 99, 3, 7, 111, 13, 4, 24, 4, 8]
def findFirstEven(arr):
    if len(arr) == 1:
        if arr[0] % 2 == 0:
            return arr[0]
        else:
            return None
    dividedArrs = [arr[0:round(len(arr) / 2)],arr[round(len(arr) / 2):len(arr)]]
    if dividedArrs[0][len(dividedArrs[0]) - 1] % 2 == 0:
        return findFirstEven(dividedArrs[0])
    else:
        return findFirstEven(dividedArrs[1])

print(findFirstEven(numbers))