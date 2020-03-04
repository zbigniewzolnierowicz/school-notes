#listToSort = [14, -9, -49, -68, -70, -4, 30, 66, -7, -35, 97, 100, -24, 95, -78, 95, 49, 43, -20, -8, -26, -6, -31, -8, -88, -53, 45, 34, 25, 16, -51, 64, 54, -60, -60, 25, 2, 53, 72, -51, -47, -94, 53, 58, 75, 11, 77, -80, -64, 51, -13, -67, 78, 31, 75, 0, -51, -77, -47, -90, 57, 1, 43, 6, -3, 3, -59, -32, -9, -8, 63, -58, -54, 60, -76, 34, 16, -5, -25, 1, 89, -45, -52, 86, 37, -98, -57, -65, 75, -93, -88, 23, -26, 80, -16, -11, 58, -32, 87, 23]
listToSort = [5, 10, 1, 2, 8, 9]

def quickSort(arr, low, high):
    pivot = arr[int((low + high) / 2)]
    smallerThanPivot = low
    biggerThanPivot = high
    while smallerThanPivot <= biggerThanPivot:
        while arr[smallerThanPivot] < pivot:
            smallerThanPivot += 1
        while arr[biggerThanPivot] > pivot:
            biggerThanPivot -= 1
        if (smallerThanPivot <= biggerThanPivot):
            temp = arr[smallerThanPivot]
            arr[smallerThanPivot] = arr[biggerThanPivot]
            arr[biggerThanPivot] = temp
            smallerThanPivot += 1
            biggerThanPivot -=1
    if low < smallerThanPivot:
        quickSort(arr, low, smallerThanPivot)
    if high > biggerThanPivot:
        quickSort(arr, biggerThanPivot, high)
    return arr

print(quickSort(listToSort, 0, len(listToSort) - 1))