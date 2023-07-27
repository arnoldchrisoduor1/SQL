/*the % represents zero, one or multiple characters.
the _ represents a single character or one character.
*/

WHERE CustomerName LIKE 'a%'; - /*Customer name begin with a*/
WHERE CustomerName LIKE '%a'; - /*Customer name ends with a*/
WHERE CustomerName LIKE '_r%'; - /*Customer name has r in second pstn*/
WHERE CustomerName LIKE 'r_%'; - /*Customer name starts wih r and is atleast two char long*/
WHERE CustomerName LIKE 'a%o'; - /*Customer name has a in the begining and o in the end*/

/*Has or in the name*/
SELECT * FROM customers
WHERE CustomerName LIKE '%or%';

/*NOT LIKE*/
SELECT * FROM Customers
WHERE CustomerName NOT LIKE 'a%';