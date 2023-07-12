/*A field with null value is a filed with no value*/

/*Showing regins with null values.*/
SELECT Column_names
FROM table_name
WHERE Column_names IS NULL;

/*Shwoing areas that are not null*/
SELECT Column_names
FROM table_name
WHERE Column_names IS NOT NULL;

/*Selecting multiple columns with one being null.*/
SELECT CustomerID, CustomerName, Addresses
FROM table_name
WHERE Addresses IS NULL;