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