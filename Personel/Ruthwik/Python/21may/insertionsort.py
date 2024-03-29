# Insertion sort in Python


def insertionSort(array):
    
    for step in range(1, len(array)):
        key = array[step]
        j = step - 1
        
        # Compare key with each element on the left of it until an element smaller than it is found
        while j >= 0 and key < array[j]:
            array[j + 1] = array[j]
            j = j - 1
        print(array,key)
        # Place key at after the element just smaller than it.
        array[j + 1] = key
        print(array)


data = [9, 5, 1, 4, 3]
insertionSort(data)
print('Sorted Array in Ascending Order:')
print(data)