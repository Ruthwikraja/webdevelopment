# Program 2 : Write a Python program to get the third side of right angled triangle from two given sides.

s1 = int(input('enter side 1:'))
s2 = int(input('enter side 2:'))

s3 = 180 - s1 - s2
print(f'third side of triangle is: {s3}')
