def latawiec(pattern, spacing):
    leftSpace = spacing - 1
    midSpace = 0
    i = 0
    while(i < spacing - 1):
        print(' ' * leftSpace + pattern + ' ' * (midSpace * 2) + pattern)
        leftSpace -= 1
        midSpace += 1
        i += 1
    i = 0
    print(' ' * leftSpace + pattern + ' ' * (midSpace * 2) + pattern)
    while(i <= spacing - 1):
        print(' ' * leftSpace + pattern + ' ' * (midSpace * 2) + pattern)
        leftSpace += 1
        midSpace -= 1
        i += 1


spacing = int(input('Podaj wielkosc'))

latawiec('%', spacing)
