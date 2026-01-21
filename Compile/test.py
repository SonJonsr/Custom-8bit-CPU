def split16BitVarTo8(number):
    numberLL = number % 256
    numberHH = round((number - numberLL) / 256)
    return [numberHH, numberLL]


print(split16BitVarTo8(500))  #should print [1, 56]