---
tags:
  - Computer_Science/Algorithm-Complexity/Sorting-Algorithms
---
# Quick Sort
https://github.com/FlakeyCheese/QuickSort--taught-method

In [[Quick Sort]], an element in the array is chosen as the pivot.
All elements larger than the pivot are moved into one sub-array.
All elements smaller than the pivot are moved into a different sub-array.
This leaves the pivot in its own sub-array.

This process is repeated on each sub-array until it contains only one element. Then arrays can then be combined together & will be in order.

Quick sort can be very efficient. However if a bad pivot is chosen the algorithm can perform as bad as [[Computer-Science/Algorithm-Complexity/Sorting algorithms/Bubble-Sort|Bubble Sort]], a bad pivot being an element that is at the smallest or highest range of values for the array.
The elements within the array are sorted around the pivot.

### Implementation
This implementation always uses the first element of the array as a pivot.
Quick sort is implemented using pointers traversing an array.

Firstly, the first element of the array is set as the pivot. The left pointer is set to the first index of an array & the right pointer is set to the highest index in the array.

(1) The right pointer checks if the element at its index is smaller than the pivot. If not then the index of the right pointer decrements. This process is repeated.
If it is then the element is moved to the position of the left pointer & the left pointer increments its position.

The left pointer checks if the value at its index is larger than the pivot. If it is not then the left pointer increments. This process is repeated.
If it is, then the element is moved to the position of the right pointer & the right pointer decrements its position. The execution then goes to position (1).

This loop repeats until the index of the left & right pointer is the same. The pivot is then set at this index. When this happens all values smaller than the pivot are at a lower index & all values larger than the pivot are at a higher index. 

This process then can repeat recursively as sub-arrays made up of the values bellow the pivot, the values above the pivot, & the pivot itself. 

Once a sub-array only contains a single element, then it is sorted. The sub-arrays are then recursively combined to form a sorted array.

[Video Example](https://www.youtube.com/watch?v=h_9kAXFKJwY)