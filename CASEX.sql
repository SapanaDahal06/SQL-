-- ==========================================
-- Create Database
-- ==========================================
IF DB_ID('ABC') IS NULL
BEGIN
    CREATE DATABASE ABC;
END
GO

USE ABC;
GO

-- ==========================================
-- Delete table if it already exists
-- ==========================================
IF OBJECT_ID('Employee20', 'U') IS NOT NULL
BEGIN
    DROP TABLE Employee20;
END
GO

-- ==========================================
-- Create Employee2 Table
-- ==========================================
CREATE TABLE Employee20
(
    EmpID INT PRIMARY KEY,
    EmpName VARCHAR(50),
    Department VARCHAR(30),
    City VARCHAR(30),
    Gender CHAR(1),
    Age INT,
    Salary INT
);
GO

-- ==========================================
-- Insert Data
-- ==========================================
INSERT INTO Employee20
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
GO

-- ==========================================
-- Display Table
-- ==========================================
SELECT * FROM Employee20;

-- ==========================================
-- CASE Example 1
-- Salary Status
-- ==========================================
SELECT
    EmpName,
    Salary,
    CASE
        WHEN Salary >= 80000 THEN 'High Salary'
        ELSE 'Normal Salary'
    END AS SalaryStatus
FROM Employee20;

-- ==========================================
-- CASE Example 2
-- Office Type
-- ==========================================
SELECT
    EmpName,
    City,
    CASE
        WHEN City = 'Kathmandu' THEN 'Head Office'
        ELSE 'Branch Office'
    END AS OfficeType
FROM Employee20;

-- ==========================================
-- CASE Example 3
-- Gender
-- ==========================================
SELECT
    EmpName,
    Gender,
    CASE
        WHEN Gender = 'F' THEN 'Girls'
        ELSE 'Boys'
    END AS GenderCategory
FROM Employee20;

-- ==========================================
-- CASE Example 4
-- City Category
-- ==========================================
SELECT
    EmpName,
    City,
    CASE
        WHEN City = 'Kathmandu' THEN 'Capital City'
        WHEN City = 'Pokhara' THEN 'Tourist City'
        WHEN City = 'Butwal' THEN 'Industrial City'
        WHEN City = 'Biratnagar' THEN 'Second Largest City'
        ELSE 'Other City'
    END AS CityCategory
FROM Employee20;

-- ==========================================
-- CASE Example 5
-- Age Category
-- ==========================================
SELECT
    EmpName,
    Age,
    CASE
        WHEN Age >= 30 THEN 'Senior Employee'
        WHEN Age >= 25 THEN 'Mid-level Employee'
        ELSE 'Junior Employee'
    END AS AgeCategory
FROM Employee20;


WITH HighSalaryEmployee AS
(
    SELECT *
    FROM Employee2
    WHERE Salary >= 70000
),

TotalSalary AS
(
    SELECT SUM(Salary) AS TotalSalary
    FROM Employee2
)

SELECT
    H.EmpName,
    H.Salary,
    T.TotalSalary
FROM HighSalaryEmployee AS H
CROSS JOIN TotalSalary AS T;