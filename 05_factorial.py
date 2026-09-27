# Program to calculate factorial of a number
# Factorial of 5 = 5 × 4 × 3 × 2 × 1 = 120

n = 5
factorial = 1
for i in range(1, n + 1):
    factorial = factorial * i

print(f"{n}! = {factorial}")
