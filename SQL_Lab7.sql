CREATE TABLE Store (
order_no INT,
code VARCHAR(3),
item CHAR(30),
quantity INT,
price INT,
discount VARCHAR(4),
mrp INT );

INSERT INTO Store VALUES
(023,'S5','Napkin',10,250,'10%',300),
(152,'S3','Table cloth',5,500,'50%',1000);

SELECT * FROM Store;

SELECT MOD(price,9) FROM Store;

SELECT POWER(price,2) FROM Store;

SELECT ROUND(price DIV 7) FROM Store;



