---
tags:
  - Computer_Science/Path_Finding
  - Computer_Science
aliases:
  - Heuristics
---
# Heuristic
Sometimes an approximate solution to an [[Computer-Science/Path Finding/Incomputable Problem|Incomputable Problem]] is an acceptable solution, a [[Computer-Science/Path Finding/Heuristic|Heuristic]] approach is an algorithm that finds a solution is not perfect, but at least adequate; Otherwise known as an estimate. This is often a trade of between precisions and optimal choices for speed of problem solving.

Heuristics have any applications ranging from search algorithms from networking.
### Advantages
- Faster solutions
- Scalability for larger problems
- Adaptability for dynamic environments

### Disadvantages
- Does not guarantee that a solution is optimal
- Requires fine-tuning

## Heuristic Types
- Constructive Heuristics: Build solutions incrementally - greedy algorithms
- Local Search Heuristics: Improve existing solutions - simulated annealing
- Metaheuristics: High level strategies - generic algorithms 

## Knapsack Problem
This is an example problem where a thief has a bag (knapsack) that can only hold a certain weight. 
They can steal a selection of items, each with a different weight and cost. 
Which combination of these items should the thief steal?


This is a complex problem as there is no perfect fast solutions, especially for larger (> 10 amounts) of items. The only perfect approach is a brute-force one, which can quickly become infeasible.
Heuristics are good for applications such as these, where speed is critical and a "good enough" result is adequate.

## Future Applications
- Quantum computing
- AI 