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


--FOREIGN KEYS
/*Prevent actions that would destroy links between tables.*/
CREATE TABLE Orders (
    OrderID int NOT NULL,
    OrderNumber int NOT NULL,
    PersonID int,
    PRIMARY KEY (OrderID),
    FOREIGN KEY(PersonID) REFERENCES Persons(PersonID);
);

--Using the alter.
ALTER TABLE Orders
FOREIGN KEY(PersonsID) REFERENCES Persons(PersonID);

--droppng a aforeign key.
ALTER TABLE Orders
DROP FOREIGN KEY FK_PersonOrder;

--CHECK CONSTRAINT.
--used to limit the value range that can be placed in a column.
CREATE TABLE Persons (
    ID int NOT NULL,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Age int,
    CHECK (Age>=18)
);

--multiple checks
CREATE TABLE Persons (
    ID int NOT NULL,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Age int,
    City varchar(255),
    CONSTRAINT CHK_Person CHECK (Age>=18 AND City='Sandnes')
);
--using the ALTER
ALTER TABLE Persons
ADD CHECK (Age>=18);

--DEFAULT CONSTRAINT.
--Used to set dfault values for columns.
CREATE TABLE Persons (
    ID int NOT NULL,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Age int,
    City carchar(255) DEFAULT 'Sandnes'
);

--using default to add system values.
CREATE TABLE Orders(
    ID int NOT NULL UNIQUE,
    OrderNumber int NOT NULL UNIQUE,
    OrderDate date DEFAULT GETDATE()
);
--When the table is already created.
ALTER TABLE Persons
ALTER City SET DEFAULT 'Sandnes';
--dropping the default constraint.
ALTER TABLE Persons
ALTER City DROP DEFAULT;

--INDEX CONSTRAINT
--used to retrieve data from the table in a much faster rate.
--users cannot see the indexes, they are only used for search.
CREATE INDEX index_name
ON table_name (column1, column2, ...);

CREATE INDEX idx_lastname
ON Persons (LastName);
--index on a combination of columns.
CREATE INDEX idx_pname
ON Persons (LastName ,FirstName);
--in MySQL
ALTER TABLE table_name
DROP INDEX index_name;