CREATE TABLE Store (
order_no INT,
code VARCHAR(3),
item_name CHAR(30),
quantity INT,
price INT,
discount VARCHAR(4),
mrp INT );

INSERT INTO Store VALUES
(121,'S2','Mug',10,250,'10%',300),
(152,'s3','Jar',5,500,'50%',1000);

SELECT * FROM Store;

CREATE VIEW available AS
SELECT item_name,quantity FROM Store;

SELECT * FROM available;

INSERT INTO Store VALUES
(150,'F1','Jam',5,400,'10%',500);

SELECT * FROM Store;

SELECT * FROM available;

DROP VIEW available;


