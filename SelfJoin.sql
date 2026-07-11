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