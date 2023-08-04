--these can be created after the table has been created using the CREATE TABLE
--or after it has been altered using the ALTER.

CREATE TABLE table_name (
    column1 datatype constraint,
    column2 datatype constraint,
    column3 datatype constraint,
    ....
);

--the NOT NULL constraint.
--will not accept null values when the table is created.
CREATE TABLE Persons (
    ID int NOT NULL,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255) NOT NULL,
    Age int
);

--creating a constraint when the table is already created.
ALTER TABLE Persons
ALTER COLUMN Age int NOT NULL;

--UNIQUE Constraint.
/*
- UNIQUE ensures that all values in the column are different.
- Many UNIQUE constraint per table but only one PRIMARY KEY constraint per table.
*/

CREATE TABLE Persons(
    ID int NOT NULL UNIQUE,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255) NOT NULL,
    Age int
);

--multple column unique constraint.
CREATE TABLE Persons (
    ID int NOT NULL,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Age int,
    CONSTRAINT UC_Person UNIQUE (ID,LastName)
);

--when the table is already created.
ALTER TABLE Persons
ADD UNIQUE (ID);

--for multiple columns.
ALTER TABLE Persons
ADD CONSTRAINT UC_Person UNIQUE(ID, LastName);

--drop unique constraint
ALTER TABLE Persons
DROP INDEX UC_Person;

ALTER TABLE Persons
DROP CONSTRAINT UC_Person;

--PRIMARY KEYS.
--a table can have one primary key.
--this primary key consists of one or multiple columns.

--the following creates a primary key when the table is created.
CREATE TABLE Persons (
    ID int NOT NULL,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Age int,
    PRIMARY KEY (ID)
);

--for multiple columns.
CREATE TABLE Persons (
    ID int NOT NULL,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Age int,
    CONSTRAINT PK_Person PRIMARY KEY (ID,LastName)
);
--theres only one primary key made up of two columns.

--primary key on alter table.
ALTER TABLE Persons
ADD PRIMARY KEY (ID);

--drpping a primary key constraint.
ALTER TABLE Persons
DROP PRIMARY KEY;

ALTER TABLE Persons
DROP PRIMARY KEY;