---
tags:
  - Computer_Science/Revision/1_4
---
# Trees
Is an "Abstract Data Type" (ADT).

There is a root node (usually at the top of the diagram).
There is only one path to each node. (There are no cycles).

### Rooted Tree
One node is the root node.
Each node has one unique parent, except the root node (which has none).

### Binary Tree
Is a type of [[#Rooted Tree]], where each node has a maximum of two children.

Each node in this data structure consists of:
- The node value
- Pointer to "left" child
- Pointer to "right" child

#### Building
Nodes are added added to the left or right of the current node (starting at the root node) depending on if the value is smaller of larger. If the position is already occupied by a node, this occurs recursively until an empty position is found.

#### Using An Array
A binary tree can be represented using an array.

| Index | Left Pointer | Value | Right Pointer |
| ----- | ------------ | ----- | ------------- |
| 0     | 1            | 24    | 2             |
| 1     | -1           | 15    | -1            |
| 2     | -1           | 38    | -1            |
The pointers are to the array index of a node. A value of "$-1$" represents an unoccupied node.

#### Traversal
There are three different ways to traverse a binary tree.
Each runs recursively until there are no more nodes left to traverse.
Each starts at the root node.
##### Pre Order
- Output current node
- Go to left node
- Go to right node
##### In Order
- Traverse left node
- Output current node
- Traverse right node
##### Post Order
- Traverse left node
- Traverse right node
- Output current node.

### Deleting Nodes
There are three separate cases
#### Deleting Leaf Node
The only change is to remove the leaf node
#### Deleting Node W One Child
Delete the current node & put the child node as a child from the deleted nodes parent.
#### Deleting Node W Two Children
The node to be deleted has its value replaced with the next largest value from its sub-nodes.
The node that the value is taken from is deleted.
Deletion continuous recursively until the tree is stable.

### Balanced Binary Tree
This is a tree with the minimum depth for it's current nodes.
It enables more efficient searching

### Binary Search Tree
This is a [[#Binary Tree]] that is sorted. When searching this tree the complexity is $O(log_2(n))$, as the search space is divided by two after each node traversal.