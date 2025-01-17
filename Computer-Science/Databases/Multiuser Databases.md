---
tags:
  - Computer_Science/Database
---
# Multiuser Databases
Multiuser databases are databases where multiple users are changing separate records in a single database at the same time.

### Record Locking
Record Locking is used in multiuser databases to prevent concurrent modification of data. It does this by only allowing one user to mutate a record at a time.

#### Deadlock
However, a problem with this solution is that Deadlocks can occur.
Deadlocks are when two separate users are trying to acquire a lock on data that the other user is holding. In poorly designed systems this can cause the application to freeze or even crash.