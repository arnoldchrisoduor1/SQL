/*Used to modify the existing data in the table.*/
UPDATE table_name
SET column1 = value1, column2 = value2
WHERE condition;

/*Example on a table*/
UPDATE customer_table
SET CustomerName = 'Alan Turing', customer_address = '345 park avenue'
WHERE CustomerID = 12;

/*Updating multiple records.*/
UPDATE Customers_table
SET CustomerName = 'Juan'
WHERE Country = 'Mexico';

/*If we omit the where clasue all the records will be updated.*/