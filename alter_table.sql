--used to drop or add, delete or modify columns in an existing table.

ALTER TABLE Tablename
ADD Column_1 datatype;

ALTER TABLE Customers
ADD Email varchar(255);

--deleting a column - some dbms dont allow this.
ALTER TABLE Customers
DROP COLUMN Email;

--renaming a column
ALTER TABLE Customers
RENAME COLUMN Email to Emaillists;

--adding a date column
ALTER TABLE Customers
ADD DateofBirth date;

--changing the datatype.
ALTER TABLE Customers
ALTER COLUMN DateOfBirth year;