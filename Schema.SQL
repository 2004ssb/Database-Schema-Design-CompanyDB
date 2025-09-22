-- database creation
CREATE DATABASE CompanyDB;

-- use that database which we created
USE CompanyDB;

-- creating the table
CREATE TABLE Employee(
ID INT PRIMARY KEY,
Name VARCHAR(100),
Address VARCHAR(300),
Age INT,
Salary DECIMAL(10,2),
Designation VARCHAR(100));

-- insert the value into the table
INSERT INTO  Employee
(ID , Name, Address , Age , Salary, Designation)
VALUE
(1, "sakshi","vashi sec11 ,juhugoan" , 21, 60000 , "developer"),
(2, "samiksha","mulund west near haldiram" , 25, 120000,  "senoir developer"),
(3, "sushmita","matunga devi-joti", 42,90000 , "manager"),
(4, "sambhaji", "gansoli west",49 ,150000 ,"manager"),
(5, "akshay","airoli nirbhuvan society" ,30, 90000, "manager"),
(6, "samidha","koperkhairane havale", 27,80000, "accountant");

-- it can show the content of employee table
SELECT * FROM Employee;
