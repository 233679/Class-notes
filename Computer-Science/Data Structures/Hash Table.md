---
tags:
  - Computer_Science/Data_Structures
---
# Hash Table
Allows for fast retrieval of data, regardless of the amount of data stored. This makes them useful in vast amounts of cases.

The core of a Hash Table is based upon an array. Expect that the index of a value within the array is determined by running the value though a [[#Hashing function]], then using the modulus operation to restrict the index to a position in the allocated array.

## Load factor
The size of the underlying array used by the hash table is determined by the load factor. The load factor is calculated by dividing the number of values in the array by the size of the array. This can be written as "Load factor = number of values stored / size of the array".

## Hashing function
A hashing function is a function that takes an input & returns a **deterministic** value representing the given value.
It is important for a hash function to produce a wide & even spread of hashes to avoid [[#Hash collisions]].

## Hash collisions
Hash collision occurs when the hash of two different values is the same. This causes a problem since the index for the value is already allocated.
There are two main methods for handling this.

### Open addressing
Open addressing is a method of dealing with [[#Hash collisions]]. It involves incrementing the index for the position of the value until an empty free index is found.
However, the main drawback of this is that it involves performing a linear search to find a value if it is not at the expected index.

### ...