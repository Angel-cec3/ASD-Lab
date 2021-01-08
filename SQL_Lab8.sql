CREATE TABLE Employee (
Code CHAR(4) NOT NULL,
Name VARCHAR(10) NOT NULL,
Designation CHAR(30),
DOB DATE,
Salary DECIMAL(18,2),
PRIMARY KEY(Code));

INSERT INTO Employee (Code, Name, Designation, DOB, Salary) VALUES
('e1', 'Albert', 'CEO', '1990-01-03', 100000.00),
('e12', 'Ram', 'BDA', '1996-06-09', 25000.00),
('e32', 'Mohan', 'Clerk', '1988-06-05', 10000.00),
('e5', 'Augustine', 'COO', '1996-10-14', 55000.00),
('e33', 'Roshini', 'Clerk', '1999-01-05', 9500.00),
('e9', 'Angel', 'Manager', '1985-07-12', 35000.00);

SELECT SUM(Salary)
FROM Employee
WHERE Designation = 'Clerk';

SELECT MAX(Salary)
FROM Employee;

SELECT AVG(Salary)
FROM Employee;

SELECT MIN(Salary)
FROM Employee;

SELECT COUNT(*) FROM Employee;







