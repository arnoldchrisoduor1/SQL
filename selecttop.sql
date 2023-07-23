/*Selecting the first three records from the customers table*/
SELECT TOP 3 * FROM Customers;

/*in mysql*/
SELECT * FROM Customers
LIMIT 3;

/*Selecting the top 50 percentage of all the data in the database*/
SELECT TOP 50 PERCENT * FROM Customers;

SELECT TOP 3 * FROM Customers
WHERE Country = 'Germany'