def avg(a, b):
    return (a + b) / 2

def calc(input_a, input_b, function, limit=0.0, accuracy=0.0):
    i = 0
    if bool(limit) and bool(accuracy):
        while function((input_a + input_b) / 2) != 0 and abs(input_a - input_b) > accuracy and i < limit:
            x = avg(input_a, input_b)
            if function(input_a) * function(x) > 0:
                input_a = x
            else:
                input_b = x
            if function(input_a) == 0:
                return input_a
            elif function(input_b) == 0:
                return input_b
            i += 1
        return avg(input_a, input_b)
    elif bool(accuracy):
        while function((input_a + input_b) / 2) != 0 and abs(input_a - input_b) > accuracy:
            x = avg(input_a, input_b)
            if function(input_a) * function(x) > 0:
                input_a = x
            else:
                input_b = x
            if function(input_a) == 0:
                return input_a
            elif function(input_b) == 0:
                return input_b
        return avg(input_a, input_b)
    elif bool(limit):
        while function((input_a + input_b) / 2) != 0 and i < limit:
            x = avg(input_a, input_b)
            if function(input_a) * function(x) > 0:
                input_a = x
            else:
                input_b = x
            if function(input_a) == 0:
                return input_a
            elif function(input_b) == 0:
                return input_b
            i += 1
        return avg(input_a, input_b)


a = -2
b = 2
print(calc(a, b, lambda x: x**3 + 5*x-3, limit=10))
