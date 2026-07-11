use Company;


CREATE TABLE Emp(
    EmpID INT PRIMARY KEY,
    EmpName VARCHAR(50),
    ManagerID INT
);

INSERT INTO Emp
VALUES
(1, 'Sherya', NULL),
(2, 'Prabisha', 1),
(3, 'Anshula', 1),
(4, 'Khusi', 2);

SELECT * FROM Emp;

SELECT
    E.EmpID,
    E.EmpName AS Employee,
    M.EmpName AS Manager
FROM Emp AS E
LEFT JOIN Emp AS M
ON E.ManagerID = M.EmpID;



CREATE TABLE Student1 (
    Name VARCHAR(50),
    Address VARCHAR(60),
    Grade CHAR(1)
);

INSERT INTO Student1
VALUES
('Sarina', 'KTM', 'A'),
('Bella', 'GHT', 'B'),
('Gigi', 'USA', 'C'),
('Kenny', 'NYC', 'A');
SELECT * FROM Student1;


CREATE TABLE Student2 (
    Name VARCHAR(50),
    Address VARCHAR(60),
    Grade CHAR(1)
);

INSERT INTO Student2
VALUES
('Sarina', 'KTM', 'A'),
('Bella', 'GHT', 'B'),
('Gigi', 'USA', 'C'),
('Kenny', 'NYC', 'A');

SELECT *
FROM Student1

UNION

SELECT *
FROM Student2;


SELECT *
FROM Student1

UNION ALL

SELECT *
FROM Student2;

