
# Write a Python program to find a pair with highest product from a given array of integers.

def pro(arr, n):

    if (n < 2):
        print("No pairs exists")
        return

    # Initialize max product pair
    a = arr[0]
    b = arr[1]

    # Traverse through every possible pair
    # and keep track of max product
    for i in range(0, n):

        for j in range(i + 1, n):
            if (arr[i] * arr[j] > a * b):
                a = arr[i]
                b = arr[j]

    print("Max product pair is {", a, ",", b, "}",
          sep="")

# Driver Code
# arr = [1, 4, 3, 6, 7, 0]
# n = len(arr)
# pro(arr, n)


N = int(input('enter number of elements in array'))  # take the size

arr = list(map(int, input().split(' ')[:N]))
n = len(arr)
print(pro(arr, n))
