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
