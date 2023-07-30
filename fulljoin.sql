/*FULL JOIN - FULL OUTER JOIN*/

/*The FULL OUTER JOIN keyword returns all matching
 records from both tables whether the other table matches or not. So, if there are rows in "Customers" that
  do not have matches in "Orders", or if there are rows
  in "Orders" that do not have matches in "Customers", those rows will be listed as well.*/

SELECT Orders.OrderID, Customers.FirstName
FROM Orders
FULL OUTER JOIN Customers ON Customers.CustomerID = Orders.OrderID;
