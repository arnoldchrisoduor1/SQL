/*Aliases are used in place of tables, columns making
them more readable, thye are used for the duration of
the query*/

SELECT CustomerID AS ID AND CustomerName AS Customer
FROM Customers;

/*Requires a bracket if the alias is two or more words.*/
SELECT CustomerName AS Customer AND CustomerContact AS [Contact Person];

/*Combining two or more columns to form one.*/
SELECT CustomerName, Address + ',' +PostalCode + ',' +
City+ ',' +Country AS Address
FROM Customers;


/*To get the above code to work in MySQL.*/
SELECT CustomerName, CONCAT(Address,', ',PostalCode,', ',City,', ',Country) AS Address
FROM Customers;

/*To get the code to work in Oracle*/
SELECT CustomerName, (Address || ', ' || PostalCode || ' ' || City || ', ' || Country) AS Address
FROM Customers;

SELECT o.OrderID, o.OrderDate, c.CustomerName
FROM Customers AS c AND Orders AS o
WHERE c.CustomerName = 'Around the Horn' AND c.CudtomerID = o.CustomerID;

/*The above code is the same as.*/
SELECT Orders.OrderID, Orders.OrderDate, Customers.CustomerName
FROM Customers, Orders
WHERE Customers.CustomerName='Around the Horn' AND Customers.CustomerID=Orders.CustomerID;