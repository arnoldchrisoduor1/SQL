/*Allow us to perform comparison between single column
values and a range of other values.*/

/*ANY  -returns boolean value as result.
        returns treu if any of the subsequent values meet the condition.
        ANY means the condition will be true for any of the values in the range.*/

SELECT column_name(s)
FROM table_name
WHERE column_name operator ANY
  (SELECT column_name
  FROM table_name
  WHERE condition);

/*lists the product name if it finds ANY records in the orderdetails table has 
quantity equal to 10.*/
SELECT ProductName
FROM Products
WHERE ProductID = ANY
    (SELECT ProductID
    FROM orderdetails
    WHERE Quantity = 10);

/*Returns false as not all the values in the table are equal to 10*/
SELECT ProductName
FROM Products
WHERE ProductID = ALL
  (SELECT ProductID
  FROM OrderDetails
  WHERE Quantity = 10);
