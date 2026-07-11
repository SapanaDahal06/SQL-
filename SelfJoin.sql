use Company;

CREATE TABLE Employe (
EmpID INT PRIMARY KEY,
EmpName VARCHAR(50),
ManagerID int
);
SELECT * FROM Employe;
Insert  into Employe 
Values
(1, 'sherya',10),
(2,'prabisha',20),
(3, 'Anshula' , 30),
(4, 'Khusi',40);

SELECT
    E.EmpName AS Employee,
    M.EmpName AS Manager
FROM Employee E
LEFT JOIN Employee M
ON E.ManagerID = M.EmpID;
