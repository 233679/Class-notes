---
tags:
  - Computer_Science/Algorithm-Complexity/Sorting-Algorithms
---
# Merge Sort
Merge sort works by recursively splitting the array into smaller sub-arrays until each array contains only one element. It then recursively merges each neighbouring sub-array until the original array is rebuild (in a sorted order). The order of the elements when merging sub-arrays is determined by comparing the first two elements in each sub-array, taking them in a sorted order until both sub-arrays are empty.
The result of this is a very fast algorithm.

For [best, worst & average case](../Big-O.md#best-worst-average-case), merge sort has a consistent [big O](../Big-O.md) of O($n×log(n)$), this is a [linearithmic](../Complexity/Linearithmic-Complexity.md) algorithm.

Believe it or not, the [space complexity](../Complexity/Space-Complexity.md) of merge sort is just O($n$)! You can find proof for this in [this stack-overflow answer](https://stackoverflow.com/a/28641693).