# Program to print multiplication table
# This prints 5 × 1, 5 × 2, 5 × 3, ... up to 5 × 10

n = 5
for i in range(1, 11):
    result = n * i
    print(f"{n} × {i} = {result}")
