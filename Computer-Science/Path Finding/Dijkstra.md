---
aliases:
  - Dijkstra's
tags:
  - Computer_Science/Path_Finding
---
# Dijkstra
The algorithm finds the shortest path between a start node & every other node in a [[Computer-Science/Data Structures/Graphs#Weighted Graph|Weighted Graphs]].

### Implementation
A priority queue is used to keep a record of which vertex to visit next.
Initially, all unexplored nodes are assumed to have an infinite cost to travel to.

When a node is visited, it is removed from the queue & the edge weights between neighbouring nodes in the queue are updated to the cost from the visited node. However, the cost is only updated if the total cost from the root node to the neighbouring node is less than the currently known cost for the neighbouring node.
This process repeats, exploring nodes in order least cost, until the queue is empty, resulting in all nodes being explored & the minimum cost being found.

