---
tags:
  - Computer_Science/Data_Structures
---
# Hash Table
Allows for fast retrieval of data, regardless of the amount of data stored, with insertion, deletion & retrieval happing in constant time (if there is no [[#Hash Collisions]]). This makes them useful in vast amounts of cases.

The core of a Hash Table is based upon an array. Expect that the index of a value within the array is determined by running the value though a [[#Hashing function]], then using the modulus operation to restrict the index to a position in the allocated array.

## Load Factor
The size of the underlying array used by the hash table is determined by the load factor. The load factor is calculated by dividing the number of values in the array by the size of the array. This can be written as "Load factor = number of values stored / size of the array".
A common size for the load factor is 50% to 70%.

## Hashing Function
A hashing function is a function that takes an input & returns a **deterministic** value representing the given value.
It is important for a hash function to produce a wide & even spread of hashes to avoid [[#Hash collisions]].

## Hash Collisions
Hash collision occurs when the hash of two different values is the same. This causes a problem since the index for the value is already allocated.
There are two main methods for handling this.

### Open Addressing
Open addressing is a method of dealing with [[#Hash collisions]]. It involves incrementing the index for the position of the value until an empty free index is found.
However, the main drawback of this is that it involves performing a linear search to find a value if it is not at the expected index.

Different implementations of open addressing can use different **skip factors**. A skip factor is the amount the index increments/changes by when looking for an empty index to insert a value into. A potential issue with having a skip factor larger than lead to looping over empty the same set of index's indefinitely. However, using a prime number for the underlying array index can avoid the problem of the skip factor getting stuck in a loop forever. As this forces all loops to iterate should the entre array (other than skip factors larger than the array size).

When deleting a value some open addressing implementations leave a "dummy" item behind. This allows for an optimisation where if an empty index is found the linear search for the delete value can exist early. This is because if there is an empty index then there was never anymore values inserted that matched the hash.
### Closed Addressing
Closed Addressing, also know as chaining, is another method of dealing with [[#Hash collisions]] is to use a [[Computer-Science/Data Structures/Linked List|Linked List]] at each index.
When an value in inserted into the [[#Hash Table]] an element is appended to the [[Computer-Science/Data Structures/Linked List|Linked List]] at the given index.
When a value if being found in the [[#Hash Table]], it involves iterating though the [[Computer-Science/Data Structures/Linked List|Linked List]] at the index of the value until the value is found.