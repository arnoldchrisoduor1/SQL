/*RIGHT JOIN also called RIGHT OUTER JOIN*/

SELECT column_name(s)
FROM table1
RIGHT JOIN table2
ON table1.column_name = table2.column_name;


SELECT Customers.CustomersName, Orders.OrderID
FROM Orders
RIGHT OUTER JOIN Orders ON Orders.OrderID = Customer.CustomerID
ORDER BY OrderID;

SELECT Orders.OrderID, Employees.FirstName, Employees.LastName
FROM Orders
RIGHT OUTER JOIN Employees ON Order.EmployeeID = Employees.EmployeeID;
