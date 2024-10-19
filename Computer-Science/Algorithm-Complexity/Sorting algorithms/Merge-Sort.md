---
tags:
  - Computer_Science/Algorithm-Complexity/Sorting-Algorithms
---
# Merge Sort
Merge sort works by recursively splitting the array into smaller sub-arrays until each array contains only one element. It then builds back up the initial array from the sub-arrays, sorting each time a sub-array is combined.

For [best, worst & average case](../Big-O.md#best-worst-average-case), merge sort has a consistent [big O](../Big-O.md) of O($n×log(n)$), this is a [linearithmic](../Complexity/Linearithmic-Complexity.md) algorithm.

Believe it or not, the [space complexity](../Complexity/Space-Complexity.md) of merge sort is just O($n$)! You can find proof for this in [this stack-overflow answer](https://stackoverflow.com/a/28641693)