/*Using the select command in SQL.*/

SELECT column1, column2
FROM table_name;

/*Ignoring all the duplicate items.*/
SELECT DISTINCT Country FROM Customers;

/*Counting all the distinct values in the database*/
SELECT COUNT(DISTINCT Country) FROM Customers;
/*This is not possible in MS Access databases.*/

/*A work around the problem is.*/
SELECT Count(*) AS DistinctCountries
FROM(SELECT DISTINCT Country FROM Customers);
