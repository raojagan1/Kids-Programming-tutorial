# Program to find the maximum of three numbers
# Compare three numbers and find which one is biggest

a, b, c = 10, 25, 15
if a > b and a > c:
    print(f"Max: {a}")
elif b > a and b > c:
    print(f"Max: {b}")
else:
    print(f"Max: {c}")
