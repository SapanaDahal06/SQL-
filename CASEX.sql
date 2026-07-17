
USE ABC;

-- Create Employee Table
CREATE TABLE Employe2 (
    EmpID INT PRIMARY KEY,
    EmpName VARCHAR(50),
    Department VARCHAR(30),
    City VARCHAR(30),
    Gender CHAR(1),
    Age INT,
    Salary INT
);

INSERT INTO Employe2
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

SELECT * FROM Employe2;

--case expression 
SELECT
    EmpName,
    Salary,
    CASE
        WHEN Salary >= 80000 THEN 'High Salary'
        ELSE 'Normal Salary'
    END AS SalaryStatus
FROM Employe2;


--Another example
SELECT 
EmpName,
city,
CASE 
     WHEN City = 'Kathmandu' THEN 'HEAD OFFICE'
     ELSE 'Brancha office'
     END AS OfficeType
     FROM Employe2;

     --Another one 
     SELECT 
     EmpName,
     Gender,
     CASE 
         WHEN Gender = 'F' THEN 'Girls'
         ELSE 'Boys'
         END AS GENDER
         FROM Employe2;



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
FROM Employe2;



SELECT
    EmpName,
    Age,
    CASE
        WHEN Age >= 30 THEN 'Senior Employee'
        WHEN Age >= 25 THEN 'Mid-level Employee'
        ELSE 'Junior Employe'
    END AS AgeCategory
FROM Employe2;



SELECT * FROM Employee2;