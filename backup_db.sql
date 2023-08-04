/*BACKUP DATABASE used to create a full backup of a 
database.*/

BACKUP DATABASE testDB
TO DISK = 'filepath';

/*Backup database since the last full backup*/
--only the changes are backed
BACKUP DATABASE
TO DISK = 'filepath'
WITH DIFFERENTIAL;

--This reduces the backup time.