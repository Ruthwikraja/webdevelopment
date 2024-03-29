#  Write a Python program to delete the smallest element from the given Heap and then inserts a new item.

import heapq as hq

heap = [25, 44, 68, 21, 39, 23, 89]
hq.heapify(heap)
print("heap: ", heap)
hq.heapreplace(heap, 21)
print("heapreplace(heap, 21): ", heap)
hq.heapreplace(heap, 110)
print("heapreplace(heap, 110): ", heap)