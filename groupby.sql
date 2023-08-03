/*GROUPBY grups rows that have the same values into summary
rows.

Often used by the aggargate functions (COUNT(), MAX(), MIN()
SUM(), AVG()*/

/*Listing the number of customers in each country.*/
SELECT COUNT(CustomerID), Country
FROM Customers
GROUP BY Country;

/*Number of customers in each country sorted high to low*/
SELECT COUNT(CustomerID), Country
FROM Customers
GROUP BY Country
ORDER BY COUNT(CustomerID) DESC;

/*Number of orders sent by each shipper.*/
SELECT Shippers.ShipperName, COUNT(Orders.OrderID) AS NumberOfOrders FROM Orders
LEFT JOIN Shippers ON Orders.ShipperID = Shipper.ShipperID
GROUP BY ShipperName;