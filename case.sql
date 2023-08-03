/*Case expression goes through the condition and returns a
value when the firts condition is met.*/

CASE
    WHEN condition1 THEN result1
    WHEN condition2 THEN result2
    WHEN conditionN THEN resultN
    ELSE result
END;

SELECT OrderID, Quantity,
CASE
    WHEN Quantity > 30 THEN 'Quantity is greater than 30'
    WHEN Quantity = 30 THEN 'Quantity is 30'
    ELSE 'Quantity is under 30'
END AS QuantityText
FROM OrderDetails;

/*The following will order by City which if NULL  the by country*/
SELECT CustomerName, City, Country
FROM Customers
ORDER BY
(CASE
    WHEN City IS NULL THEN Country
    ELSE City
END);