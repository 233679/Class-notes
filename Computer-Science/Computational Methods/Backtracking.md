---
tags:
  - Computer_Science/Computational_Methods
---
# Backtracking
[[#Backtracking]] is a generic problem solving technique that attempts to find a solution to a problem. If an attempted solution is invalid, the algorithm backtracks to a previous choice that could lead to a valid solution and resumes execution down a different path.

Backtracking is often implemented in a recursive algorithms, as when an invalid path is chosen, the failure can easily be passed back up the call stack until another (potentially valid) choice is possible.

### Pruning
Backtracking can avoid exploring parts of the search space that do not seem favourable.

### Constraint Problems
Backtracking is also often used in algorithms that have constraints, as possible solutions can easily be discarded if they are invalid. 
This makes Backtracking a good choice for problems such as:
- Sudoku
- N-Queens problem (trying to arrange queens on a chess board that do not attack each other)
