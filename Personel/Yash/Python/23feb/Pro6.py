# Program 6 : Write a Python program which iterates the integers from 1 to 50. 
# For multiples of three print "Fizz" instead of the number and for the multiples of five print "Buzz". 
# For numbers which are multiples of both three and five print "FizzBuzz".

i=0
while i<50:    
    i=i+1
    if i%3==0 and i%5==0:
        print("FizzBuzz")
        continue        
    elif i%3==0 :
        print("Fizz")
        continue      
    elif i%5==0:
        print("Buzz")
        continue   
   
    print(i)