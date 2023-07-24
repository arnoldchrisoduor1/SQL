/*I used to filter records.*/

SELECT column1, column2
FROM Customers
WHERE condition;

/*WHERE can also be used in DELETE, UPDATE commands*/
SELECT * FROM Customers
WHERE Country = 'Mexico'

/*When identifying numeric values*/
SELECT * FROM Customers
WHERE CustomerID = 1

/*We can also use the terms BETWEEN, LIKE and 
IN to get any value we required.*/

/*Using the NOT keyword.*/
SELECT * FROM Customers
WHERE NOT City = 'Berlin'

/*Using the AND statement*/
SELECT * FROM Customers
WHERE CutomerID = 56
AND PostalAddress > 46

/*Using the OR keyword*/
SELECT * FROM Customers
WHERE CustomerID = 78
OR CustomerID = 98

/*even more and*/
SELECT * FROM Customers
WHERE CustomerID = 76 AND City = 'Berlin'

/*Combing or and and*/
SELECT * FROM Customers
WHERE Country = 'Germany' AND (City = 'Berlin' OR City = 'Muchen')


/*Combining and and not*/
SELECT * FROM Customers
WHERE NOT Country = 'America' AND NOT Country = 'Europe'

