/*
- the following data types are used for storing date/time.
DATE - format YYYY-MM-DD
DATETIME - format: YYYY-MM-DD HH:MI:SS
TIMESTAMP - format: YYYY-MM-DD HH:MI:SS
YEAR - format YYYY or YY
*/

SELECT * FROM Orders WHERE OrderDate='2018-11-11';
--two dates can be easily compared if theres no time involved.


--do not use time components in your dates unless you have to.
