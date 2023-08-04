--allows unique numbers to be generated automatically.
--often this is the primary key field.

--MySQL.
CREATE TABLE Persons (
    Personid int NOT NULL AUTO_INCREMENT,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Age int,
    PRIMARY KEY (Personid)
);
--to let the autoincrement value strat with another value.
ALTER TABLE Persons AUTO_INCREMENT=100;
--To insert a new value we dont have to include the personid.
INSERT INTO Persons (FirstName, LastName)
VALUES ('Lars', 'Monsen');