class Node:
    
    def __init__(self,id,name,batch):
        self.id = id
        self.name = name
        self.batch = batch
        self.next = None
        self.prev = None

    def __repr__(self):
        value = '{%d %s %s}' % (self.id, self.name, self.batch) 
        return value

class d_linkedlist:
    
    def __init__(self, T=[None for _ in range(10)]):
        self.head = None
        self.T = T
        self.m = len(self.T) #Hash table capacity (number of slots) 
        self.size = 0 #Number of all elements in the hash table

    def hash(self, id):
        return id % self.m  #Define hash function

#=============================================== Adding Data Function ======================================
    
    def insert(self,newnode):
        k = self.hash(newnode.id) #Hash value
        if self.T[k] == None: #There is no value in this linked list
            self.T[k] = newnode 
            newnode.next = None 
            newnode.pre = None 
        else:
            newnode.next = self.T[k] #There are values ​​in this linked list
            self.T[k].pre = newnode 
            self.T[k] = newnode 
            self.T[k].pre = None 
        self.size += 1

#=============================================== Display Data Function ======================================
    def display(self):
        res = [None for _ in range(self.m)]
        for i in range(self.m):
            k = self.T[i]
            line = ''
            while k:
                line += '%s' %k
                k = k.next
                if k:
                    line += ' <=> '
            res[i] = line 
        print(res)

#=============================================== Deleting Data Function ======================================

    def delete(self, id) :
        k = self.hash(id) #Hash value
        node = self.T[k]
        prev = None
		# 2. Iterate to the requested node
        while node is not None and node.id != id:
            prev = node
            node = node.next
		# Now, node is either the requested node or none
        if node is None:
			# 3. Key not found
            return None
        else:
			# 4. The key was found.
            self.size -= 1
            result = node
			# Delete this element in linked list
            if prev is None:
                self.T[k] = node.next # May be None, or the next match
            else:
                prev.next = prev.next.next # LinkedList delete by skipping over
			# Return the deleted result 
            return result
#=============================================== Searching Data Function ======================================

    def search(self,id):
        k = self.hash(id) #Hash value
        node = self.T[k]
        
        while node is not None and node.id != id:
        	node = node.next
        if node is None:
            return None
        else:
            return node

#=============================================== Updating Data Function ======================================

    def update(self,newnode):
        k = self.hash(newnode.id) #Hash value
        node = self.T[k]
        while node:
            if node.id == newnode.id:
                node.name = newnode.name
                node.batch = newnode.batch
                break
            node = node.next
        else:
            print("ID not found")

#=============================================== Write Function ===================================================
    def writef(self,newnode):
        with open('scm.txt','a+') as fd:
            fd.writelines( str(newnode.id) +' '+ newnode.name +' '+ newnode.batch +"\n")

#=============================================== Read Function ===================================================
    def readf(self):
        with open('scm.txt', 'r') as fd:
            f=[]
            for line in fd.readlines():
                f= line.split()
                id = f[0]
                name = f[1]
                batch = f[2]
                newnode = Node(int(id), name, batch)
                T.insert(newnode)

#=============================================== Delete file data ===================================================
    def deletef(self, id):
        with open("scm.txt","r+") as fd:
            f = fd.readlines()
            fd.seek(0)
            for line in f:
                if str(id) not in line:
                    fd.write(line)
            fd.truncate()

#=============================================== Update file data ===================================================
    def updatef(self, newnode):
        with open("scm.txt","r+") as fd:
            f = fd.readlines()
            fd.seek(0)
            for line in f:
                if str(newnode.id) not in line:
                    fd.write(line)
                else:
                    fd.write( str(newnode.id) +' '+ newnode.name +' '+ newnode.batch +'\n')
            fd.truncate()

#=============================================== Menu List ===================================================


T = d_linkedlist()
T.readf()
while(True):
    print("""
===================School Management System===================
 1 --> ADD 
 2 --> Display  
 3 --> Search 
 4 --> Update 
 5 --> Delete
 6 --> Exit 
---------------------------------------------------------------
""")
    
    ch = int(input("Enter your choice : "))
    
    if ch == 1:
        length = int(input("Enter the number of nodes you want for your Linked List  : \n"))
        for counter in range(1,length+1) :
            id = int(input("Enter your id : "))
            name = input("Enter your name : ")
            batch = input("Enter youe Batch name / no : ")
            newnode = Node(id,name,batch)
            sid = T.search(id)
            if str(id) in str(sid):
                print(sid)
                print("ID already present!!")
            else:
                T.insert(newnode) #======================> Insert Data
                T.writef(newnode) #======================> Write Data
                print("Data Added Successfully :)")
                T.display()
        

    elif ch == 2:
        T.display()

    elif ch == 3:
        id = int(input("Enter the ID : "))
        print(T.search(id))

    elif ch == 4:
        id = int(input("Enter your id : "))
        name = input("Enter the new name : ")
        batch = input("Enter new batch name / no : ")
        newnode=Node(id,name,batch)
        sid = T.search(id)
        if str(id) not in str(sid):
            print("ID not present!!!")
        else:
            T.update(newnode)
            T.updatef(newnode)
            print("Data Updated Successfully :)")
    
    elif ch == 5:
        id = int(input("Enter the ID : "))
        sid =T.search(id)
        if str(id) in str(sid):
            T.delete(id) 
            T.deletef(id)
            print("Data Deleted Successfully :)")
        else:
            print("ID not found!!!")

    elif ch == 6:
        exit()
    
    else: 
        print("Invalid choice") 
    