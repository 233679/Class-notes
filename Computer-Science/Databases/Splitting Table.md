---
tags:
  - Computer_Science/Database
---
# Splitting Table
In Databases many to many relationships are bad & undesirable. A [[Computer-Science/Databases/Splitting Table|Splitting Table]] can be used to change a many to many relationship into a two one to many relationships.

For the example of a driving instructor company:
Bad many to many
```
Student -(many)> <(many)- Instructor
```

Using a splitting table (Lesson):
```
Student -(one)> <(many)- Lesson -(many)> <(one)- Instructor
```