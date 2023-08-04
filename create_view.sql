--virtual table based on the result-set of an SQL statement.

CREATE VIEW [Brazil Customers] AS
SELECT CustomerName, ContactName
FROM Customers
WHERE Country = 'Brazil';

--querrying the view.
SELECT * FROM [Brazil Customers];

--select products with the prices higher than the average price.
CREATE VIEW [Products Above Average Price] AS
SELECT ProductName, Price
FROM Products
WHERE Price > (SELECT AVG(Price) FROM Products);
--querrying the data.
SELECT * FROM [Products Above Average Price];

--updating the view - adding city.
CREATE OR REPLACE VIEW [Brazil Customers] AS
SELECT CustomerName, ContactName, City
FROM Customers
WHERE Country = 'Brazil';

--DROPPING VIEW
DROP VIEW view_name;

DROP VIEW [Brazil Customers];