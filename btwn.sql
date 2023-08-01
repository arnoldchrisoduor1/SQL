/*The betweenoperator is selective including the begining and the end.*/
SELECT * FROM Products
WHERE Price BETWEEN 10 AND 20;

/*Select items out of a particular range*/
SELECT * FROM Products
WHERE Price NOT BETWEEN 10 AND 20

/*The following SQL statement selects all products with a price between 10 and 20. In addition; do not show products with a CategoryID of 1,2, or 3:*/
SELECT * FROM Products
WHERE Price BETWEEN 10 AND 60;
AND CategoryID NOT IN (1, 2, 3);

/*The following SQL statement selects all products with a ProductName between Carnarvon Tigers and Mozzarella di Giovanni:*/
SELECT * FROM Products
WHERE ProductName BETWEEN 'Carnavan' AND 'Tiger'
ORDER BY ProductName;

SELECT * FROM Orders
WHERE OrderDate BETWEEN #1/2/2017# AND #23/6/2017#;

SELECT * FROM Orders
WHERE OrderDate BETWEEN #1996-6-01# AND #1996-12-31#;