SHOW DATABASES;
CREATE DATABASE college;

CREATE TABLE Department (
Code CHAR(10) NOT NULL,
Title CHAR(15),
Dept_name VARCHAR(30) UNIQUE NOT NULL,
Dept_id INT,
Salary INT CHECK(Salary>2000),
PRIMARY KEY(Code) );

INSERT INTO Department (Code,Title,Dept_name,Dept_id,Salary) VALUES 
('cse1','HOD','Computer Science',3,80000),
('ece3','Professor','Electronics & Communication',1,40000);

CREATE TABLE Instructor (
Name VARCHAR(30) NOT NULL,
Code CHAR(10) ,
Id INT DEFAULT 0 );

INSERT INTO Instructor (Name,Code,Id) VALUES
('Dr.James Paul','cse1',30001),
('Sandra James','ece3',10003);



