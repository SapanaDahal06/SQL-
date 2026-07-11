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