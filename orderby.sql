/*This is used to sort the data either in ascending
or descending.
*/

/*Ordering in ascending order*/
SELECT * FROM Customers
ORDER BY column1, column2 ASC

/*Arrangning in disorder.*/
SELECT * FROM Customers
ORDER BY column1, column2 DESC;

/*Sorting data by another column in the table*/
SELECT * FROM Customers
ORDER BY Country;

/*Ordering another column and changing the order*/
SELECT * FROM Customers
ORDER BY Country DESC

/*Order by country if they have the sam name we order 
by customername*/
SELECT * FROM Customers
ORDER BY Country, customername

/*Arranging by two columns and changing the order*/
SELECT * FROM Customers
ORDER  BY Country ASC, CustomerName DESC
