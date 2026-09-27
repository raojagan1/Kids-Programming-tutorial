# Program to calculate sum of numbers from 1 to 100
# Using a WHILE loop instead of FOR loop
# 1 + 2 + 3 + ... + 100 = 5050

i = 1
sum = 0
while i <= 100:
    sum = sum + i
    i = i + 1

print(f"Sum: {sum}")
