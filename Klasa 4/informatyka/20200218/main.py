unsortedList = [4,3,2,4,4,4,1,2]
tabElementAmount = len(unsortedList)
bucketList = {}
maximal = max(unsortedList) + 1
for item in unsortedList:
    if item not in bucketList:
        bucketList[item] = [ item ]
    else:
        bucketList[item].append(item)
finalArr = []
for i in range(0, maximal):
    if i in bucketList:
        finalArr = finalArr + bucketList[i]

print(finalArr)