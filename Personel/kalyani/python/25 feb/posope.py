#WAP to add two positive integers without using the '+' operator.

a = int (input("Enter the value of a: "))

b = int (input("Enter the value of b: "))

def add(a, b):
    while b != 0:
        data = a & b
        a = a ^ b
        b = data << 1
    return a

print(add(a, b))