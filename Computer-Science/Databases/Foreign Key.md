---
tags:
  - Computer_Science/Database
---
# Foreign Key
A [[Computer-Science/Databases/Foreign Key|Foreign Key]] is a [[Computer-Science/Databases/Primary Key|Primary Key]] from one table that is stored in a related table to refer back to a specific record within the original table. This allows tables such as [[Computer-Science/Databases/Splitting Table|Splitting Tables]] to refer back to specific records to access information, such as "customer name".

## Referential Integrity
[[Computer-Science/Databases/Foreign Key#Referential Integrity|Referential Integrity]] is ensuring that no "zombie records" are formed when deleting [[Computer-Science/Databases/Primary Key|Primary Keys]] that [[Computer-Science/Databases/Foreign Key|Foreign Keys]] depend on. If the records with the [[Computer-Science/Databases/Foreign Key|Foreign Keys]] are no properly "cleaned up" when the [[Computer-Science/Databases/Primary Key|Primary Key]] record is deleted then an aforementioned "zombie record" will be created, with a record that has no relationships to other records.