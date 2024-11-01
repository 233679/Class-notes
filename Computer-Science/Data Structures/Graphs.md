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

