#check number positive negative and zero


def checkNum() :
    num  = int(input("Enter the number :"))

    if num >= 0 :
        print("Number is positive")
    elif num == 0 :
        print("Zero")
    else :
        print("Number is negative")

checkNum()

