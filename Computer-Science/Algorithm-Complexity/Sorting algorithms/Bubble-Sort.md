# Bubble Sort
This algorithm iterates over an array, comparing adjacent elements. If the elements are out of order they are swapped. This produces an effect where the highest element is "bubbled" to the end of the array on each iteration. 

The algorithm performs two comparisons per switch so therefore it has a [Big O](../Big-O.md) of O($n^2$); this makes it a [quadratic](../Complexity/Quadratic-Complexity.md) algorithm. 


# Optimizations

Fortunately, there are two optimizations that can be made to bubble sort.

- If no swaps were performed on the last iteration then the list is sorted, so exit early.
- For each iteration of the loop, you don't need to check any elements after the size minus the iteration index. As those elements have already been sorted by previous iterations.

This changes the bubble sort [best, worst & average](../Big-O.md#best-worst-average-case) complexity to:
- Best case: O($n$)
- Worst case: O($n^2$)
- Average case: O($n^2$)

Click [here](https://www.sortvisualizer.com/bubblesort/) for a demonstration of the algorithm at work. (The link only shows an optimized version of bubble sort).

Bubble sort has a [space complexity](../Complexity/Space-Complexity.md) of O($1$) as no matter the size of the array, only the current elements being compared/swapped & the index of the array will be present in memory.