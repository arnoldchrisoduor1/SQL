/*Used to insert new records into a table.*/

INSERT INTO table_name (column1, column2, column3)
VALUES (value1, value2, value3);

/*Without specifying the column names.*/
INSERT INTO table_name
VALUES(value1, value2, value3);
/*Ensure the values are in the correct order with the table.*/

/*Example of the insert command.*/
INSERT INTO Customers (CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES ('Cardinal', 'Tom B. Erichsen', 'Skagen 21', 'Stavanger', '4006', 'Norway');
/*CustomerID is an auto incremented field and will be 
automatically incremented.*/