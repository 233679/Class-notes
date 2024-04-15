# Linear Search
A linear search is an algorithm that iterates over **every** element in an array. Once it has iterated over every element it can return true if the array contains the desired element, otherwise false.

Effects of checking every element once:
- Results in a [Big O](../Big-O.md) of O($n$).
- Enables linear search to work on unsorted arrays.

Linear search has a [space complexity](../Complexity/Space-Complexity.md) of O($1$) as no matter the size of the array, only the current element & the index of the array will be present in memory.