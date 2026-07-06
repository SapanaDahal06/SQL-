Create database Company ;
use Company;

CREATE TABLE Employee (
    EmpID INT PRIMARY KEY,
    EmpName VARCHAR(50),
    Department VARCHAR(30),
    Age INT,
    Gender VARCHAR(10),
    City VARCHAR(30),
    Salary INT
);


INSERT INTO Employee (EmpID, EmpName, Department, Age, Gender, City, Salary)
VALUES
(101, 'John',    'IT',        25, 'Male',   'New York',    70000),
(102, 'Emma',    'HR',        28, 'Female', 'Los Angeles', 65000),
(103, 'David',   'Finance',   30, 'Male',   'Chicago',     80000),
(104, 'Sophia',  'IT',        26, 'Female', 'New York',    72000),
(105, 'Michael', 'Marketing', 35, 'Male',   'Boston',      68000),
(106, 'Olivia',  'HR',        29, 'Female', 'Seattle',     66000),
(107, 'Daniel',  'Finance',   32, 'Male',   'Houston',     85000),
(108, 'Ava',     'IT',        27, 'Female', 'Dallas',      75000),
(109, 'James',   'Sales',     31, 'Male',   'Miami',       62000),
(110, 'Mia',     'Sales',     24, 'Female', 'San Diego',   60000);
--System Defined Function

SELECT UPPER(EmpName) FROM Employee;
SELECT LOWER(Gender) FROM Employee;
SELECT SUM(Salary) AS TotalSalary
FROM Employee;
--MAX
SELECT MAX(Salary) AS HighestSalary
FROM Employee;

SELECT ROUND(AVG(Salary), 2) AS AverageSalary
FROM Employee;

SELECT EmpName,
       SUBSTRING(EmpName, 1, 4) AS First3Letters
FROM Employee;


SELECT EmpName, LEN(EmpName) AS NameLength
FROM Employee;

SELECT CONCAT(EmpName, ' - ', Department) AS EmployeeDetails
FROM Employee;

SELECT CONCAT('Mr.',EmpName) As Fullname
FROM Employee;

SELECT CONCAT('Hyy', EmpName) as lastname
FROM Employee;


SELECT Department,
       REPLACE(Department, 'IT', 'Information Technology') AS NewDepartment
FROM Employee;


SELECT EmpName,
REPLACE(EmpName , 'John','Jony')as NewEmpName
FROM Employee;

SELECT * FROM Employee;

SELECT FORMAT(GETDATE(), 'dd-MM-yyyy') AS Today;

--AGGRERATE FUNCTON 
SELECT COUNT(*)
FROM Employee;


SELECT SUM(Salary)
FROM Employee;


SELECT AVG(Salary)
FROM Employee;

SELeCT MIN(Salary)
FROM Employee;


SELECT MAX(Salary)
FROM Employee;
--GROUP BY 
SELECT * FROM Employee;

--GROUP BY 
SELECT Gender ,MAX(age)
FROM Employee
GROUP BY Gender;

SELECT Department ,MIN(EmpID)
From Employee
group by Department;


SELECT City 
FROM Employee
GROUP BY City
HAVING MAX (Salary)> 70000;



SELECT Gender,
       COUNT(*) AS TotalEmployees
FROM Employee
GROUP BY Gender;

--Group by Department

SELECT Department,
       MIN(Salary) AS LowestSalary
FROM Employee
GROUP BY Department

SELECT CURRENT_DATE;

SELECT CURRENT_TIMEZONE();

SELECT GETDATE();

SELECT FORMAT(GETDATE(), 'dd-MM-yyyy');