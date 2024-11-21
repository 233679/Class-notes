---
tags:
  - Computer_Science/Data_Structures
---
# Tree

A tree is a common [[Computer-Science/Data Structures/Abstract Data Structure|Abstract Data Structure]].
![[Computer-Science/Data Structures/Tree - Tree Example.png]]

A tree is a connected [[Computer-Science/Data Structures/Graphs|Graph]] with no cycles (i.e. there is a unique path from each node to any other node).

In a rooted tree there is one node that is defined as the root node. All nodes other than the root node has one unique parent node.

### Binary Tree
In a binary tree there are only 0, 1, 2, or 3 nodes connected to a node. With one connection to the parent node (other than the root node) & either one or two connection to child nodes.

#### Implementation
Each node in a binary tree consists of the node data, a pointer to the "left" child, & a pointer to the "right" child.
When a new node is added to a binary tree, it is added to the left if the value is less than the current node, and added to the right if the value is larger than the current node. This process repeats until an appropriate node with no left/right child is found, starting at the root node.

#### Traversal
A binary tree can be traversed in three different ways, visiting the nodes/sub-trees recursively in the specified orders. If a node has no children, then the algorithm backtracks.

A node is only "traversed" when the "Root node" order is completed. (Think of it as a node is only added to the "traversed" list when the "Root node" "method" is called).

###### Pre-order
1. Root node
2. Left sub-tree
3. Right sub-tree

###### In-order
1. Left sub-tree
2. Root node
3. Right sub-tree

###### Post-order
1. Left sub-tree
2. Right sub-tree
3. Root node

Remember: it's always Left then Right, with the only thing changing being when the "Root node" is traversed.

##### Example
![[Computer-Science/Data Structures/Tree - Traversal.png]]

### Tree as Array
A tree can be represented as an array, with a value of -1 indicating that there is no subtree for the left/right side of the node.
![[Computer-Science/Data Structures/Tree - As Array.png]]

A disadvantage of this is that an array cannot be dynamically expanded.
