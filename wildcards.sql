/*Wild cards are used in place of multiple values.
 Commonly used with the LIKE
*/

/*
bl* - finds black, blue
h?t - finds hot, hut
h[oa]t - finds hot, hat
h[!oa]t - finds hit, any value not in the brackets.
c[a-b]t - finds any single character within the given range.
2#5 - finds any single numeric character e.g 205, 235.

*/

/*Select cities that begin either with a, oor b or c*/
SELECT * FROM Customers
WHERE City LIKE '[abc]%';


SELECT * FROM Customers
WHERE City LIKE '[a-c]%';