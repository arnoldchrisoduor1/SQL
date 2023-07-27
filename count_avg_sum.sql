/*
count() - returns the number of rows of a given column.
avg() - finds the average of the numerical values in a column.
sun() - returns the sum of a numeric column.

NULL values are not counted.
*/

/*Finding the sum of the products.*/
SELECT COUNT(ProductID)
FROM Products;

/*Finding the average of the prices of the products.*/
SELECT AVG(Price)
FROM Products;

/*Finding the sum of the quantity fields in the order details table*/
SELECT SUM(quantity)
FROM OrderDetails;