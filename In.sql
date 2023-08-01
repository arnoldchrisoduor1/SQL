/*This is shorthand for multiple or statements.*/

SELECT * FROM Customers
WHERE Country IN('Germany', 'UK', 'Kenya');

SELECT * FROM Customers
WHERE Country NOT IN ('Germany', 'UK', 'kenya')

/*where the cutomers are in the same region as the suppliers.*/
SELECT * FROM Customers
WHERE Country IN(SELECT Country FROM Suppliers);

