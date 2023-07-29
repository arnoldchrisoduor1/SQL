/*LEFT JOIN keyword returns all the contents of the
the left table and none if the right has no match.*/

/*LEFT JOIN - LEFT OUTER JOIN*/

SELECT Customers.CustomerName, Orders.OrderID
FROM Customers
LEFT JOIN Orders ON Customers.CustomerID = Orders.OrderID
ORDER BY Customers.CustomerName;