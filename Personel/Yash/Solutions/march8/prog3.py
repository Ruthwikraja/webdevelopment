# Program 3 : Python Program for Program to Print Matrix in Z form 

arr = [[1, 2, 3, 4],
   [5, 6, 7, 8],
   [10, 10, 11, 12],
   [13, 14, 15, 16]]

n = len(arr[0])

i = 0
for j in range(0, n-1):
   print(arr[i][j], end = ' ')

k = 1
for i in range(0, n):
   for j in range(n, 0, -1):
      if(j == n-k):
         print(arr[i][j], end = ' ')
         break
   k+= 1

i = n-1
for j in range(0, n):
   print(arr[i][j], end = ' ')