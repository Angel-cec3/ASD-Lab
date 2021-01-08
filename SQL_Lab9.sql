CREATE TABLE Employee (
Code CHAR(4) NOT NULL,
Name VARCHAR(10) NOT NULL,
Designation CHAR(30),
DOB DATE,
Salary FLOAT,
PRIMARY KEY(Code));

INSERT INTO Employee (Code, Name, Designation, DOB, Salary) VALUES
('e1', 'Albert', 'CEO', '1990-01-03', 100000.00),
('e12', 'Ram', 'BDA', '1996-06-09', 25000.00),
('e32', 'Mohan', 'Clerk', '1988-06-05', 10000.00);

SELECT * FROM Employee ORDER BY Name DESC;

CREATE TABLE Deposit(
baccno BIGINT,
branch_name VARCHAR(60),
amount FLOAT);

INSERT INTO Deposit(baccno, branch_name, amount) VALUES
(276000592,'Chengannur',5000.34),
(256700987,'Mavelikara',5675.67),
(243007811,'Aleppey',10000);

SELECT branch_name, COUNT(baccno), SUM(amount) 
FROM Deposit GROUP BY branch_name;



