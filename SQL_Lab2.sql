CREATE TABLE Employee (
Code CHAR(4) NOT NULL,
Name VARCHAR(10) NOT NULL,
Designation CHAR(30),
DOB DATE,
Salary DECIMAL(18,2),
PRIMARY KEY(Code));

INSERT INTO Employee (Code, Name, Designation, DOB, Salary) VALUES
('e1', 'Albert', 'CEO', '1990-01-03', 60000.00),
('e2', 'Jerome', 'Salesperson', '1978-06-05', 40000.00);
 
 SELECT * FROM Employee;
 
 UPDATE Employee 
 SET Salary = 100000.00 
 WHERE code = 'e1';
 
 DELETE FROM Employee WHERE code = 'e2';
 
 SELECT * FROM Employee;
 
