#Fibnocci Series
t1=0
t2=1
i=0
print("Fibnocci Series:")
while i<50:
    print(t1)
    next = t1+t2
    t1=t2
    t2=next
    i=i+1