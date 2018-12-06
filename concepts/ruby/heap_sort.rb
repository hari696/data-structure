require 'pry'

# Build --------> Binary Heap

# Heap Sort Implemented.
def heapify(arr, n, i)
  largest = i
  l = 2 * i + 1
  r = 2 * i + 2

  largest = l if l < n && arr[i] < arr[l]
  largest = r if r < n && arr[i] < arr[r]

  if largest != i
    arr[i],arr[largest] = arr[largest],arr[i]
    heapify(arr, n, largest)
  end
end

def heapSort(arr)
  n = arr.length

  (0..n).reverse_each do |i|
    heapify(arr, n, i)
  end

  (0..n-1).reverse_each do |i|
    arr[i], arr[0] = arr[0], arr[i]
    heapify(arr, n, i)
  end
end

# arr = [ 12, 11, 13, 5, 6, 7]
arr = [5, 6, 7, 11, 12, 13]
heapSort(arr)
n = arr.length
print ("Sorted array is \n")
for i in 0..n-1
  puts arr[i]
end
