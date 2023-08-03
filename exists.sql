/*Used to test for the existance of any record in the subquery.
 - Returns true for one or more records.
*/

SELECT column_name(s)
FROM table_name
WHERE EXISTS
(SELECT column_name FROM table_name WHERE condition);

/*Returns true and lists the suppliers with  a product price
less than 20.*/
SELECT SupplierName
FROM Suppliers
WHERE EXISTS (SELECT ProductName FROM Products WHERE Products.SuppliersID = 
Suppliers.supplierID AND Price < 20);