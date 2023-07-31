/*This is a table joining itself.*/

SELECT column_name(s)
FROM table1 T1, table1 T2
WHERE condition;

/*T1 AND T2 are aliases for the same table*/

SELECT A.CustomerName AS CustomerName1, B.CustomerName AS CustomerName2, A.City
FROM Customers A, Customers B
WHERE A.CustomerID <> B.CustomerID
AND A.City = B.City
ORDER BY A.City;