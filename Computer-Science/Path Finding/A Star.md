---
aliases:
  - A*
tags:
  - Computer_Science/Path_Finding
---
# A Star
The [[Computer-Science/Path Finding/A Star|A*]] is an improvement to the [[Computer-Science/Path Finding/Dijkstra|Dijkstra]] algorithm, that remedies some inefficiencies of [[Computer-Science/Path Finding/Dijkstra|Dijkstra's]] algorithm.
A major difference from the [[Computer-Science/Path Finding/Dijkstra|Dijkstra]] algorithm is that [[Computer-Science/Path Finding/A Star|A*]] only finds the shortest path between two nodes, rather than the shortest path to every other node.

#### Heuristic Distance
[[Computer-Science/Path Finding/A Star|A*]] uses [[Computer-Science/Path Finding/Heuristic|Heuristics]] to estimate the [[#Heuristic Distance]] (total distance) from the current node to the destination. An implementation of this is known as the [[Computer-Science/Path Finding/Manhattan Distance#|Manhattan Distance]].

### Implementation
The implementation of [[Computer-Science/Path Finding/A Star|A*]] is very similar to the implementation of [[Computer-Science/Path Finding/Dijkstra|Dijkstra's]] algorithm.

A priority queue is used to keep a record of which vertex to visit next.
Initially, all unexplored nodes are assumed to have an infinite cost to travel to.

When a node is visited, it is removed from the queue & the edge weights between neighbouring nodes in the queue are updated to the cost from the visited node. However, the cost is only updated if the total cost from the root node to the neighbouring node is less than the currently known cost for the neighbouring node.
The [[#Heuristic Distance]] is (potentially, depending on implementation) combined with other calculations to determine the next node to traverse (known as the "f" value within these notes).
This process repeats until the "f" value of the destination node, is the smallest "f" value; Resulting in a short path being found, however it may not be the shortest possible path.
