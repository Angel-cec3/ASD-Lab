CREATE TABLE Employee_details(
empid CHAR(4) NOT NULL,
Name VARCHAR(10) NOT NULL,
Designation CHAR(30),
DOB DATE,
Salary DECIMAL(18,2),
PRIMARY KEY(empid));



CREATE TABLE EMPLOYEE (
empid CHAR(4) NOT NULL,
Name VARCHAR(10) NOT NULL,
Designation CHAR(30),
FOREIGN KEY(empid) REFERENCES Employee_details(empid) );

INSERT INTO Employee_details (empid, Name, Designation, DOB, Salary) VALUES
('e1', 'Albert', 'CEO', '1990-01-03', 60000.00),
('e2', 'Jerome', 'Salesperson', '1978-06-05', 40000.00),
('e3', 'Simon', 'Product_Manager', '1990-01-07', 25000.00),
('e4', 'Habel', 'Salesperson', '1991-06-05', 40000.00),
('e5', 'Angel', 'CEO', '2000-10-14', 55000.00);

INSERT INTO EMPLOYEE (empid, Name, Designation) VALUES
('e1', 'Albert', 'CEO'),
('e2', 'Jerome', 'Salesperson'),
('e5', 'Angel', 'CEO');

SELECT * FROM EMPLOYEE
WHERE empid IN (SELECT empid FROM Employee_details);

SELECT * FROM EMPLOYEE
WHERE empid NOT IN (SELECT empid FROM Employee_details);
