use Company;
CREATE TABLE Employe1 (
    EmpID INT PRIMARY KEY,
    EmpName VARCHAR(50),
    Department VARCHAR(30),
    Salary INT
);

INSERT INTO Employe1
VALUES
(1,'John','IT',70000),
(2,'Emma','IT',90000),
(3,'Bella','HR',50000),
(4,'David','HR',70000),
(5,'Mike','Sales',60000),
(6,'Sarah','Sales',65000);

SELECT * FROM Employe1


SELECT
    EmpName,
    Salary,
    ROW_NUMBER() OVER(ORDER BY Salary DESC) AS RowNum
FROM Employe1;