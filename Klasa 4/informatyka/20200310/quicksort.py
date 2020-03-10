def quickSort(numbers):
    if len(numbers) == 0:
        return []
    elif len(numbers) == 1:
        return numbers
    else:
        pivot = numbers[len(numbers) - 1]
        left = []
        right = []
        for number in numbers:
            if number < pivot:
                left.append(number)
            elif number > pivot:
                right.append(number)
        finalArr = []
        finalArr.extend(quickSort(left))
        finalArr.append(pivot)
        finalArr.extend(quickSort(right))
        return finalArr


numbers = [15, 23, -6, 9, 11, 38, 17]
print(quickSort(numbers))
