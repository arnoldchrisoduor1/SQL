/*The having clause was added as te WHERE clause cannot aggragate functions.*/
SELECT column_name(s)
FROM table_name
WHERE condition
GROUP BY column_name(s)
HAVING condition
ORDER BY column_name(s);

/*Listing the number of customers in each country, only countries with more
than 5 customers.*/
SELECT COUNT(CustomerID), Country
FROM customers
GROUP BY Country
HAVING COUNT(CustomerID) > 5;

/*Same thng sorted hight to low.*/
SELECT COUNT(CustomersID), Country
FROM Customers
GROUP BY Country
HAVING COUNT(CustomerID) > 5
ORDER BY COUNT(CustomerID) DESC;

/*lISTING EMPLOYEES WITH MORE THAN 10 ORDERS.*/
SELECT Employees.LastName, COUNT(Orders.OrdersID) AS NumberOfOrders
FROM (Orders INNER JOIN Employees ON Orders.EmployeeID = Employees.EmployeeID)
GROUP BY LastName
HAVING COUNT(Orders.OrderID) > 10;

/*Listing if employees have reached a certain threshold.*/
SELECT Employees.LastName, COUNT(Orders.OrderID) AS NumberOfOrders
FROM Orders
INNER JOIN Employees ON Orders.EmployeeID = Employees.EmployeeID
WHERE LastName = 'David' OR LastName = 'Fuller'
GROUP BY LastName
HAVING COUNT(Orders.OrderID) > 25;