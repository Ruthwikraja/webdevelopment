#Ceate a Function
def patten7():

# Ask for enter the number from the use  
    
    number = int(input("Enter the integer number: "))  
    # number of spaces
    k = number - 1
 
    # outer loop to handle number of rows
    for i in range(0, number):
     
        # inner loop to handle number spaces
        # values changing acc. to requirement
        for j in range(0, k):
            print(end=" ")
     
        # decrementing k after each loop
        k = k - 1
     
        # inner loop to handle number of columns
        # values changing acc. to outer loop
        for j in range(0, i+1):
         
            # printing stars
            print("* ", end="")
     
        # ending line after each row
        print()
 
#Calling Function
patten7()