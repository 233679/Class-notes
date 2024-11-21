---
tags:
  - Computer_Science/Data_Structures
---
# Graphs
Visualising puzzles as graphs can make a problem easier to understand & therefore solve.
A finite state machine can be represented as a graph.
### What is a Graph
A graph is a highly flexible [[Computer-Science/Data Structures/Abstract Data Structure|Abstract Data Structure]] representing complex relationships.
Graphs are comprised of vertices (nodes) & edges (links).

### Cycles
Graphs have no defined start or end node.
Graphs have cycles.
Cycles are a sequence of vertices that can be traversed to though edges that end where they started. In other words, cycles are loops within a graph.

### Implementation

#### Adjacent List
This is where there is a list of vertices, with each vertex in the list storing its neighbouring vertices & the traversal cost (if applicable).
The computational efficiency of this implementation is not the best, but it is efficient memory wise.

#### Adjacency Matrix

##### Undirected Graph
![[Computer-Science/Data Structures/Graphs - Adjacency Matrix.png]]
The cost of the edges between vertices are represented by the entries within the matrix, using the id of each vertex to retrieve the edge between the vertices (if there is one).
This implementation is very quick computationally, but takes up more memory as most of the matrix is empty.

For an undirected graph, (as shown above) the matrix is mirrored diagonally (from top left to to right).
##### Directed Graph
![[Computer-Science/Data Structures/Graphs - Directed Adjacency Matrix.png]]
For a directed graph, the source vertex is the column (uppy downy one) & the destination is the row (across one).

### Types
There are multiple different types of graphs, all of which can be mixed & matched.
#### Undirect Graph
An undirected graph is a graph that allows traversal in both directions of links between nodes.
#### Directed Graph
A directed graph has is represented by arrows at the end of links to signify that a link can only be traversed in one direction.

#### Weighted Graph
In a weighted graph, there is a cost to traverse each edge. The cost can represent anything relevant to what the graph is mapping.
#### Unweighted Graph
No cost to traverse each link

### Traversing a Graph
There are two ways of traversing a graph

#### Depth-first search
The algorithm traverses as far down a path as it can before backtracking, going down the next unvisited path.

This algorithm uses a stack to keep track of the last node visited, and a list to hold the id of nodes that have been visited.
The order of neighbours chosen to visit is not important.
The stack is used to store the path taken to a vertex.

The first time a vertex is visited it is added to the visited list, this prevents the algorithm from becoming stuck in a loop & repeatedly visiting vertices.
When traversing the graph, the current vertex is added onto the stack. A neighbouring vertex that has not already been visited will be chosen to explore next, with the vertex id being pushed onto the stack. If a vertex has no neighbours/no unvisited neighbours, then the algorithm backtracks, and pops vertices off of the stack until more neighbours are found, or the stack is empty. If the stack is empty then all possible neighbours have been explored and the algorithm terminates.

#### Breadth-first
The algorithm explores the neighbours of the current vertex, then the neighbours of each of those vertices and so on.

The algorithm uses a queue & a visited list.

The starting vertex will be added into the queue.
The vertex at the front of the queue will have the unvisited neighbours added into the queue. When all the neighbouring vertices have been explored, the current vertex will be removed from the front of the queue & added to the visited list. This process repeats until the queue is empty.

