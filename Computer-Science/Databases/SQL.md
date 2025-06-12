---
tags:
  - Computer_Science/Database
---
# SQL
SQL (Structured Query Language) is a [[Computer-Science/Paradigms/Declarative|Declarative language]] that is used to interact with databases.

## Commands
The keywords in SQL commands are conventionally written in uppercase and are terminated with ";".

### Select Statement
The SELECT statement is one of the most powerful statements in SQL and is used to query the records from one or more tables.

Basic example:
```SQL
SELECT id, name FROM example;
```
This command will return all the records from the table "example", but only display the "id" & "name" fields.

To display all of the fields within "example" you do:
```SQL
SELECT * FROM example;
```
Where the "\*" is interpreted as all/any.

### LIKE
The LIKE statement is used in a WHERE clause to specify a pattern to search for.
```SQL
SELECT City FROM example WHERE City LIKE "a%"
```

The character "%" in LIKE patterns represents zero, one, or many of any character.

### AND
The AND operator is used in WHERE clauses to perform the AND operation with conditions.
```SQL
SELECT City, Name FROM example WHERE City = "Berlin" AND Name LIKE "J%"
```

### OR
Same as the [[#AND]] operator, but performs the OR operation

### DELETE
Deletes all entries that are matched. If "WHERE" is not given, then all entries in the table will be deleted.
```SQL
DELETE FROM example WHERE City = "Berlin"
```

### INSERT
The INSERT operation inserts data into an existing table.
```SQL
INSERT INTO example (City, Name) VALUES ("London", "James Smith")
```

