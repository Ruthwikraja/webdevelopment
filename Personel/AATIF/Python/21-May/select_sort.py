def selectionSort(array, size):
    for step in range(size):
        min_idx = step

        for i in range(step + 1, size):
            if array[i] < array[min_idx]:
                min_idx = i
        (array[step], array[min_idx]) = (array[min_idx], array[step])
data = [4,7,2,6,11,13,8]
size = len(data)
selectionSort(data, size)
print('Sorted Array in Ascending Order:')
print(data)