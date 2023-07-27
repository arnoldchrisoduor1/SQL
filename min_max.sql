/*MIN() - returns the smallest value of a given column.
MAX() - returns the largest value ofa given column.
*/

SELECT MIN(column1)
FROM table_name
WHERE condition;

/*Finding the smalles t price for a product.*/

SELECT MIN(Price) AS SmallPrice
FROM Products