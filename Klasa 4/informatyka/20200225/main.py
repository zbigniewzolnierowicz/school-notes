def min(x, y):
    if x >= y:
        return y
    elif x < y:
        return x

def max(x, y):
    if x >= y:
        return x
    elif x < y:
        return y

def findMinMax(arr):
    indexOfMiddle = int(len(arr) / 2)
    if len(arr) > 2:
        pair = (findMinMax(arr[0:indexOfMiddle]), findMinMax(arr[indexOfMiddle:len(arr)]))
        minimum = min(pair[0][0], pair[1][0])
        maximum = max(pair[0][1], pair[1][1])
    elif len(arr) == 1:
        minimum = arr[0]
        maximum = arr[0]
    else:
        minimum = min(arr[0], arr[1])
        maximum = max(arr[0], arr[1])
    return (minimum, maximum)
haystack = [15, 2, 34, 5, 76, 3, 2, 0, -1]
print(findMinMax(haystack))