def findElementInList(haystack, needle, startIndex = 0):
    if len(haystack) == 1 and needle != haystack[0]:
        return None
    elif len(haystack) % 2 != 0:
        middleOfHaystack = haystack[int(len(haystack) / 2)]
    else:
        middleOfHaystack = int((haystack[int(len(haystack) / 2 - 0.5)] + haystack[int(len(haystack) / 2 + 0.5)]) / 2)
    if middleOfHaystack == needle:
        return int(len(haystack) / 2) + startIndex
    elif needle > middleOfHaystack:
        return findElementInList(haystack[int(len(haystack) / 2):int(len(haystack))], needle, startIndex + int(len(haystack) / 2))
    elif needle < middleOfHaystack:
        return findElementInList(haystack[0:int(len(haystack) / 2)], needle, startIndex)

haystack = [-2, 0, 3, 5, 10, 12, 17, 18, 25, 31, 35, 40]
haystack.sort()
needle = 35
indexOfNeedle = findElementInList(haystack, needle)
print(indexOfNeedle)