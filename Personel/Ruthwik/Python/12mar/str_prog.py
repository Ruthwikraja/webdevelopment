# a menu driven Program to
# Perform following operations
# 1. Length of String
# 2. Reverse String
# 3. Check Palindrome or not
# 4. Check Symmetrical or not
# 5. Check Permutations and combination
# 6. Check two strings are anagram or not
# 7. Exit



def length(a):
    l=len(a)
    print(f"The length of {a} is {l}")
def rev(a):
    r=a[::-1]
    print(f"The reverse of {a} is {r}")
def palindrome(a):
    r=a[::-1]
    s=a[::1]
    if(r==s):
        print(f"The {a}ia a palindrome")
    else:
        print(f"The {a} is not a palindrome ")
def symmetrical(a):
    b=len(a)
    c=1
    if b%2:
        mid=b//2 +1
    else:
        mid=b//2
    start=0
    start1=mid
    while(start < mid and start1 < b):
        if(a[start])==a[start1]:
            start +=1
            start1 +=1
        else:
            c=0
            break
    if(c==0):
        print(f"The {a} is not a symmetric")
    else:
        print(f"The {a} is  a symmetric")
    print()



from itertools import permutations
from itertools import combinations

def pc(a):
    p= permutations(a)
    
    print(f"The permutation of {a} is ")
    for i in list(p):
        print("".join(i),end=" ")

    c=combinations(a,2)
    print(f"\n The combination of {a} is : ")
    for i in list(c):
        print("".join(i),end =" ")
    print()


def anagram(a):
    b=input("Enter another string : ")
    if(sorted(a)==sorted(b)):
        print(f"The strings {a} and  {b} are anagram")
    else:
        print(f"The string {a} and {b} are not anagram")


print("Select operation.")
print("1.String length")
print("2.String reverse")
print("3.String palindrome")
print("4.String symmetry")
print("5.Permutation and combination")
print("6.Anagram")
print(("7.exit"))

while True:
    # Take input from the user
    choice = input("Enter choice(1/2/3/4/5/6/7): ")

    if choice in ('1', '2', '3', '4', '5','6','7'):
        

        if choice == '1':
            a=input("Enter the string : ")
            print(length(a))

        elif choice == '2':
            a=input("Enter the string : ")
            print(rev(a))

        elif choice == '3':
            a=input("Enter the string : ")
            print(palindrome(a))

        elif choice == '4':
            a=input("Enter the string : ")
            print(symmetrical(a))
        
        elif choice == '5':
            a=input("Enter the string : ")
            print(pc(a))

        elif choice == '6':
            a=input("Enter the string : ")
            print(anagram(a))    
        
        elif choice == '7':
            exit()
    else:
        print("Invalid Input") 
        


