listToSort = [1785651, -1, -2, 2, 4, 3, 5, 6, 6, 7, 77]

def mergePair(pair):
    listOutput = []
    if type(pair) == int:
        return pair
    for item in pair:
        if type(item) == list:
            for itemSecond in item:
                listOutput.append(itemSecond)
        else:
            listOutput.append(item)
    listOutput.sort()
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
        pair = [mergeSort(arr[0:indexOfMiddle]), mergeSort(arr[indexOfMiddle:len(arr)])]
        return mergePair(pair)

sortedList = mergeSort(listToSort)
print(sortedList)
listToSort.sort()
print(sortedList == listToSort)
