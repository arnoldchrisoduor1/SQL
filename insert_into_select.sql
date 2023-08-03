/*
 - INSERT INTO SELECT copies data from one table and inserts t into another.
 - requires that the data type in the source and target tables match.
 - existing records in the target table are unaffected.
*/

/*Copies all columns from one table to another.*/

INSERT INTO table2
SELECT * FROM table1
WHERE condition;

/*select only some columns from one table into another table.*/
INSERT INTO table2 (column1, column2, column3, ...)
SELECT column1, column2, column3, ...
FROM table1
WHERE condition;

/*Copying suppliers into customers.*/
/*Columns not filled with data, will contain NULL.*/
INSERT INTO Customers (CustomerName, City, Country)
SELECT SupplierName, City, Country FROM Suppliers;

/*Selecting only German suppliers.*/
INSERT INTO Customers (CustomerName, City, Country)
SELECT SupplierName, City, Country FROM Suppliers
WHERE Country='Germany';