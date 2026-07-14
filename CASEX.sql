
USE ABC;

-- Create Employee Table
CREATE TABLE Employee2 (
    EmpID INT PRIMARY KEY,
    EmpName VARCHAR(50),
    Department VARCHAR(30),
    City VARCHAR(30),
    Gender CHAR(1),
    Age INT,
    Salary INT
);

INSERT INTO Employee2
VALUES
(101, 'Alice',   'IT',        'Kathmandu', 'F', 24, 85000),
(102, 'Bob',     'IT',        'Pokhara',   'M', 27, 72000),
(103, 'Charlie', 'HR',        'Butwal',    'M', 30, 58000),
(104, 'Diana',   'HR',        'Kathmandu', 'F', 26, 61000),
(105, 'Ethan',   'Sales',     'Biratnagar','M', 29, 68000),
(106, 'Fiona',   'Sales',     'Pokhara',   'F', 25, 68000),
(107, 'George',  'Finance',   'Dharan',    'M', 31, 93000),
(108, 'Helen',   'Finance',   'Kathmandu', 'F', 28, 93000),
(109, 'Ian',     'Marketing', 'Butwal',    'M', 26, 55000),
(110, 'Julia',   'Marketing', 'Pokhara',   'F', 23, 55000);

SELECT * FROM Employee2;

--case expression 

SELECT 
EmpName,
Salary,
CASE
WHEN Salary >= 80000 THEN "High Salary"
ELSE 
"Normal Salary"
END 