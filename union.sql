/*The union is used to combine the result-set of two or more 
SELECT statements.

- Every select statement should have the same number of columns.
- Columns must have the same data type.
- Columns in every select statement should be in the same order.*/

SELECT column_name(s) FROM table1
UNION
SELECT column_name(s) FROM table2;

/*Use UNION ALL to allow for duplicate values.*/
SELECT column_name(s) FROM table1
UNION ALL
SELECT column_name(s) FROM table2;

/*Column name in the result set is equal to the column name in the 
first SELECT statement.*/

SELECT City FROM Customers
UNION
SELECT City FROM Suppliers
ORDER BY City;

/*Returning Cities from bot the suppliers and customers.*/
SELECT City, Country FROM Customers
WHERE Country = 'Germany'
UNION
SELECT City, Country FROM Suppliers
WHERE Country = 'Germany'
ORDER BY City;

/*Returning the duplicate values also*/
SELECT City, Country FROM Customers
WHERE Country = 'Germany'
UNION ALL
SELECT City, Country FROM Suppliers
WHERE Country = 'Germany'
ORDER BY City;

/*Temporary column alias 'Type' that lists whether the contact
 person is a customer or a supplier*/
SELECT 'Customer' AS Type, ContactName, City, Country
FROM Customers
UNION
SELECT 'Supplier', ContactName, City, Country
FROM Suppliers;