CREATE TABLE  Class (
Id VARCHAR(10),
Name VARCHAR(30) );

INSERT INTO Class VALUES
('A01','Alan Peter'),
('A10','Catherin Antony') ;

SELECT * FROM Class;

SET autocommit = 0;

START TRANSACTION;

INSERT INTO Class VALUES
('A11','Jeffin Sam');

SELECT * FROM Class;
SAVEPOINT Class1;

INSERT INTO Class VALUES
('A25','Peter Pan');

SELECT * FROM Class;
SAVEPOINT Class2;

ROLLBACK TO Class1;
SELECT * FROM Class;
COMMIT;



