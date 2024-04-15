# Binary search
Binary search is a sorting algorithm that worst by checking the middle element of an array. If the middle element is higher, the top half of the array is "disguarded". If the middle element is lower, the bottom half of the array is "disguarded". This process repeates until the desired value is found.

This is very efficient for a **sorted** list, with a [Big O](../Big-O.md) of O($log(n)$), since it has a [logarithmic complexity](../Complexity/Logarithmic-Complexity.md).