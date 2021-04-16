# To delete a file, you must import the OS module, and run its os.remove() function:
import os
if os.path.exists("demofile.txt"):
  os.remove("demofile.txt")
else:
  print("The file does not exist") 

# To delete an entire folder, use the os.rmdir() method:
# os.rmdir("myfolder") 