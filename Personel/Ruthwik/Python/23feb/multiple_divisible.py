#Python program to find those numbers which are divisible by 7 and multiple of 5, between 1500 and 2700

n=1500

while n<=2700:
    if n%7==0 and n%5==0:
        print(f"{n} is divisible by 7 and multiple of 5")
    n=n+1
