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

--ROW_NUMBER
SELECT
    EmpName,
    Salary,
    ROW_NUMBER() OVER
    (ORDER BY Salary ASC)
    AS RowNumt 
FROM Employe1;

--RANK
SELECT
EmpName,
Salary,
RANK()OVER(ORDER  BY Salary DESC) AS RankNo
FROM Employe1;


SELECT 
EmpName,
Department,
salary,
RANK() Over (ORDER BY Salary DESC ) AS RankNo
FROM Employe1;

SELECT 
EmpID,
EmpName,
Department,
Salary,
RANK() OVER (ORDER BY Salary desc) RankNO
FROM Employe1;


--DENSE_RANK()

SELECT 
EmpName,
salary,
DENSE_RANK () OVER (ORDER BY Salary desc) DENSE_RANK
FROM Employe1;

SELECT
    EmpName,
    Salary,
    DENSE_RANK() OVER(ORDER BY Salary DESC) AS DenseRank
FROM Employe1;


SELECT 
EmpName,
Salary,
LAG(Salary) OVER (ORDER BY Salary DESC) As previousSalary 
From Employe1;

SELECT
EmpName,
Salary,
LAG(Salary) OVER (ORDER BY Salary DESC) AS PreviousSalary,
Salary - LAG(Salary) OVER (ORDER BY Salary DESC) AS SalaryDifference
FROM Employe1;

SELECT
SaleDate,
Sales,
    LAG(Sales) OVER (ORDER BY SaleDate) AS PreviousSales,
    Sales - LAG(Sales) OVER (ORDER BY SaleDate) AS SalesChange
FROM DailySales;