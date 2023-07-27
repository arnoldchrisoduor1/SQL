/*Join clause is used to combine two or more rows based on
a related column between them.*/

SELECT Orders.OrderID, Customers.CustomerName, Orders.OrderDate
FROM Orders
INNER JOIN Customers ON Orders.CustomerID=Customer.CustomerID;