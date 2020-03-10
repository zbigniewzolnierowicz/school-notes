import random
coordsX = [1, 3, 2, -2]
coordsY = [3, 4, 1, 2]

azimuth = [coordsX[i] / coordsY[i] for i in range(0, len(coordsX))]


def findLowest(azimuths, start=0):
    if len(azimuths) == 2:
        if azimuths[0] < azimuths[1]:
            return start
        else:
            return start + 1
    else:
        leftIndex = int(findLowest(azimuths[0:int(len(azimuths) / 2)], 0))
        rightIndex = int(findLowest(azimuths[int(len(azimuths) / 2):len(azimuths)], int(len(azimuths) / 2)))
        if azimuths[leftIndex] < azimuths[rightIndex]:
            return (coordsX[leftIndex], coordsY[leftIndex])
        else:
            return (coordsX[rightIndex], coordsY[rightIndex])


print(findLowest(azimuth))
