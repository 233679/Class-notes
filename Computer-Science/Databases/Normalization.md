---
tags:
  - Computer_Science/Database
---
# Normalization
Normalization is a design process for creating reasonable databases.

### First Normal Form:
All tables must have a primary key.
Atomic data. (Use a standard database layout & split the data into the smallest possible partitions, like when filling in your address on an online form.)
No repeating of fields or names (e.g. book_1, book_2).

### Second Normal Form:
The database needs to be in First normal form.
Contains no partial dependencies (when fields in the table only depend on part of the primary key. This can only happen when using composite keys.).

### Third Normal Form:
The database needs to be in Second normal form.
All fields must only depend on the primary key.
For example if there is a table for a driving instructor with the fields (InstructorID, name, mobile, car reg, MOT), then this does not satisfy third normal form, as the "MOT" depends on the "car reg", not the "InstructorID". This can be solved by moving the "MOT" into its own table (car reg (primary key), MOT), with the "car reg" being a forign key in the instructor table.