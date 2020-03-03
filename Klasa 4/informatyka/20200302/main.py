listToSort = [14, -9, -49, -68, -70, -4, 30, 66, -7, -35, 97, 100, -24, 95, -78, 95, 49, 43, -20, -8, -26, -6, -31, -8, -88, -53, 45, 34, 25, 16, -51, 64, 54, -60, -60, 25, 2, 53, 72, -51, -47, -94, 53, 58, 75, 11, 77, -80, -64, 51, -13, -67, 78, 31, 75, 0, -51, -77, -47, -90, 57, 1, 43, 6, -3, 3, -59, -32, -9, -8, 63, -58, -54, 60, -76, 34, 16, -5, -25, 1, 89, -45, -52, 86, 37, -98, -57, -65, 75, -93, -88, 23, -26, 80, -16, -11, 58, -32, 87, 23]

def mergePair(pair):
    listOutput = []
    if type(pair) == int:
        return pair
    for item in pair:
        for itemSecond in item:
            if len(listOutput) == 0:
                listOutput.append(itemSecond)
            else:
                if itemSecond >= listOutput[len(listOutput) - 1]:
                    listOutput.append(itemSecond)
                elif itemSecond <= listOutput[0]:
                    listOutput.insert(0, itemSecond)
                else:
                    for i in range(0, len(listOutput)):
                        if listOutput[i] >= itemSecond:
                            listOutput.insert(i, itemSecond)
                            break
                        else:
                            continue
    return listOutput


def mergeSort(arr):
    if len(arr) == 1:
        return [arr[0]]
    elif len(arr) == 2:
        if arr[0] > arr[1]:
            return [arr[1], arr[0]]
        else:
            return [arr[0], arr[1]]
    else:
        indexOfMiddle = int(len(arr) / 2)
        pair = [mergeSort(arr[0:indexOfMiddle]),
                mergeSort(arr[indexOfMiddle:len(arr)])]
        return mergePair(pair)


listSorted = mergeSort(listToSort)
print("List before:")
print(listToSort)
print("List after:")
print(listSorted)
listSortedByMethod = listToSort
listSortedByMethod.sort()
print("Was the list sorted?")
print(listSorted == listSortedByMethod)
