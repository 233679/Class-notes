# Insertion Sort
Insertion sort is a bit similar to [bubble sort](Bubble-Sort.md). In fact it has the same [best, worst & average](../Big-O.md#best-worst-average-case) complexity as [bubble sort](Bubble-Sort.md), even though the uses a different algorithm!
- Best case: O($n$)
- Worst case: O($n^2$)
- Average case: O($n^2$)

Insertion sort works by iterating & checking if the next element is bigger than the previous element. If it finds an element that is out of order it swaps the first & last element. It then keeps moving back in the array with the element until it's in order. It then jumps back to the index the element was original at & keeps iterating over the array.

This image might help you visualise the process.
![Insertion-Sort-Example-Image](Insertion-Sort-Example-Image.png)

Insertion sort has a [space complexity](../Complexity/Space-Complexity.md) of O($1$) as no matter the size of the array, the same amount of memory will be used for the algorithm.