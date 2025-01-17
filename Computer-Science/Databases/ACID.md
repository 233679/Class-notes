---
tags:
  - Computer_Science/Database
---
# ACID
ACID stands for:
Atomicity
Consistency
Isolation
Durability

### Atomicity
"A change to the database is either completely performed or not at all", there can be no in-between. This means that data cannot end up in an invalid state, and changes will not be left half finished. For example, this means that when deleting a record, all fields will be deleted or non..
### Consistency
"Any change in the database must retain the overall state of the database".
All operations must keep the invariants of the database intact. For example, a foreign key constraint must be upheld.
### Isolation
"A transaction must not be interrupted by another transaction".
During a transaction, no other processes can access the data being modified in that transaction until it has finished.
### Durability
"Once a change has been made to a database, it must not be lost to a system failure".
Once a transaction has been completed, the changes made to the database will persist inspire of immediate system failure. This is achieved by writing the data to the disk as a part of the transaction.