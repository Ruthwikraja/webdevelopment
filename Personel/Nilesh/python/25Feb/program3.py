#Write a Python program to reverse the digits of a given number and add it to the original, If the sum is not a palindrome repeat this procedure.
num =int(input("Enter number:"))
temp=num
rev=0
while(num>0):
    sum=num%10
    rev=rev*10+sum
    num=num//10
if(temp==rev):
    print("The number is a palindrome!")
else:
    print("The number is not a palindrome!")
