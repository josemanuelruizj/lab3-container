from itertools import product
for i in product(['A', 'C', 'G'], repeat=10):
    print(''.join(i))
