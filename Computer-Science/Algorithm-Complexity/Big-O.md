# Big O Notation
Big O notation is a representation of how well an algorithm scales on more elements are given to the algorithm.

This notation is written in the form O($n$) where $n$ symbolises the amount of elements given to an algorithm.

## Why Use Big O?
Take for example a [Linear algorithm](Searching%20algorithms/Linear-Search.md). This type of algorithm has a Big O of O($n$). The execution time increases directly proportionally with the amount of input.
On my computer a linear algorithm with 10 inputs may take 3 seconds to compute. Yet, the same algorithm with the same input may take 1 second to compute on your computer. If the input is doubled to 20 then the algorithm will take 6 seconds on my computer & 2 seconds.
Even though my computer is slower than your computer the time taken doubles with double the inputs!
Therefore, using Big O provides an easy way to compare algorithms across machines of different performance.

## Big O & the Dominant Term
When stating the Big O of an algorithm only the dominant term is included, this is because the terms that aren't dominant quickly become inconsequential as the number of inputs scales higher & higher.
To get the dominant term of an expression you just get the term that grows the fastest. For example, in the equation $3n+6+7n^2$ the dominant term would be $n^2$ as $3n$ & $6$ don't grow as fast. The constant of $7$ can be ignored as it also doesn't grow as fast. Then what's left is just $n^2$. This is the complexity of this algorithm.

## Best, Worst, & Average case
When running an algorithm sometimes it's Big O notation can vary based on the starting conditions. The starting conditions are usually split into best, worst, & average case.
For example in bubble sort.
- The best case scenario is that everything is already sorted. This would have a Big O of O($n$).
- The worse case scenario is that everything is in a reversed order. This would have a Big O of O($n^2$).
- The average case (the one most commonly encountered) is still has a Big O of O($n^2$).
When comparing algorithms the worst case scenario is commonly used.