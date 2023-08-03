/*Copies data from a table into a new table.*/

/*Copies all clumns into a new table.*/
SELECT *
INTO newtable [IN externaldb]
FROM oldtable
WHERE condition;

/*Copy only some columns into a new table.*/
SELECT column1, column2, column3, ...
INTO newtable [IN externaldb]
FROM oldtable
WHERE condition;

/*Creating a backup copy of customers.*/
SELECT * INTO CustomerBackup2017
FROM Customers;

/*Using the IN clause to copy the table into a new 
table in another database.*/
SELECT * INTO CustomerBackup2017 IN 'Backup.mdb'
FROM Customers;

/*Copying only a few columns.*/
SELECT CustomerName, ContactName INTO CustomerBackup2017
FROM Customers;

/*Copies only German Customers*/
SELECT * INTO CustomersGermany
FROM Customers
WHERE Country = 'Germany';

/*Copying data from more than 1 table to multiple tables.*/
SELECT Customers.CuatomerName, Orders.OrderID
INTO CustomerOrderBackup2017
FROM Customers
LEFT JOIN Orders ON Customers.CustomerID = Orders.CustomerID;

/*Creating a new empty table using the schema of another.*/
SELECT * INTO newtable;
FROM oldtable
WHERE 1 = 0;