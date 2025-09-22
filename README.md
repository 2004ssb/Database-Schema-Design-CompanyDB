# Database Setup and Schema Design – CompanyDB

## 📋 Objective
Create a sample database schema to practice:
- Database creation
- Table creation with constraints
- Data insertion and retrieval

## 🏢 Domain Chosen
**Company Employee Management**

The project stores employee details such as name, address, age, salary, and designation.

---

## 🗂️ Database Schema

### Table: `Employee`

| Column      | Data Type       | Constraints        | Description                       |
|-------------|-----------------|--------------------|-----------------------------------|
| ID          | INT             | PRIMARY KEY        | Unique identifier for each employee |
| Name        | VARCHAR(100)    |                    | Employee name                      |
| Address     | VARCHAR(300)    |                    | Residential address                |
| Age         | INT             |                    | Employee age                       |
| Salary      | DECIMAL(10,2)   |                    | Employee salary                    |
| Designation | VARCHAR(100)    |                    | Job title/designation             |

---

## 💾 SQL Script

```sql
-- Database creation
CREATE DATABASE CompanyDB;

-- Use the database
USE CompanyDB;

-- Create the Employee table
CREATE TABLE Employee(
    ID INT PRIMARY KEY,
    Name VARCHAR(100),
    Address VARCHAR(300),
    Age INT,
    Salary DECIMAL(10,2),
    Designation VARCHAR(100)
);

-- Insert sample records
INSERT INTO Employee
(ID, Name, Address, Age, Salary, Designation)
VALUES
(1, "sakshi","vashi sec11 ,juhugoan",21,60000,"developer"),
(2, "samiksha","mulund west near haldiram",25,120000,"senoir developer"),
(3, "sushmita","matunga devi-joti",42,90000,"manager"),
(4, "sambhaji","gansoli west",49,150000,"manager"),
(5, "akshay","airoli nirbhuvan society",30,90000,"manager"),
(6, "samidha","koperkhairane havale",27,80000,"accountant");

-- View all records
SELECT * FROM Employee;


ER DAIGRAM

The chart depicts a corporation's worker management system. It illustrates how workers, departments, and the relationship within are set up.
1️⃣ Employee Entity
This entity stores all that individual information about an employee.
Some important notes:
All employees will have a unique id.
Basic information is included such as name, address, age, salary and title.
Also an attribute managerid will point to an employee id of another employee.
This identifies the reporting relationship for each employee - manager/supervisor.
There is an attribute depid that will associate an employee with the department where they primarily work.

2️⃣ Department Entity

This entity has the information about each department in the company.
deptid is the unique identifier.
deptname is the name of the department, such as HR or IT.
Location is the actual site of the department.
DeptHeadID indicates the employee who is head of that department.
This indicates the department can only have one employee associated as as department head.

3️⃣ EmployeeDepartment Entity

This is a relationship (junction) table.
It is needed because:
An employee can work in multiple departments, and
A department can have multiple employees.
To establish this many to many relationship, we store:
emplyeeid - which employee, 
depid - which department, 
startdate and enddate – the period of time the employee worked in the department.
The id attribute is simply a unique key for each record.

Relationships Explained

Employee - Department: 
A department can have many employees. An employee can belong to more than one department through depid in Employee and the junction table (Table 2).

Employee - Employee (managerid): 
Shows the hierarchical reporting inside the company. An employee can be the manager of other employees.

Department - Employee (DeptHeadID): 
Indicates which employee is the head of the department.