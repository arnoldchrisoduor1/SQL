CREATE TABLE table_name (
    column1 datatype,
    column2 datatype,
    column3 datatype,
   ....
);

--Creating a table.
CREATE TABLE Persons(
    PersonID int,
    LastName varchar(255),
    FirstName varchar(255),
    Addres varchar(255),
    City varchar(255)
);

--creating table from existsing table.
CREATE TABLE new_table_name AS
    SELECT column1, column2,...
    FROM existing_table_name
    WHERE ....;

--example
CREATE TABLE TestTable AS
SELECT customername, contactname
FROM Customers;