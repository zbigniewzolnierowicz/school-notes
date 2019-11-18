def calc(input_a, input_b, function, input_limit, accuracy=0.0000000000000000000000000000000000001):
    i = 0
    while function((input_a + input_b) / 2) != 0 and i < input_limit and abs(input_a - input_b) > accuracy:
        x = (input_a + input_b) / 2
        if function(input_a) * function(input_b) > 0:
            input_a = x
        else:
            input_b = x
        i += 1
    return function((input_a + input_b) / 2)


a = -2
b = 2
limit = 10
print(calc(a, b, lambda x: x**3 + 5*x - 3, limit))
