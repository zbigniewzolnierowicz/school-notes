myList = []

while True:
    txt = input('Wpisz liczbę całkowitą. Po zakończeniu, napisz "q" i naciśnij enter. ')
    if txt == "q":
        numbers = [ int(x) for x in myList ]
        avg = sum(numbers) / len(numbers)
        print(avg)
        break
    else:
        myList.append(txt)