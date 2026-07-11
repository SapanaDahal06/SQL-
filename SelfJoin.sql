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



create table student1 (
Name varchar(50),
Address varchar(60),
 Grade int
);
INSERT into student1
Values 
('srina','ktm','A'),
('bella','ght','B'),
('gigi','USA','C'),
('kenny','NYC','A');


create table student2 (
Name varchar(50),
Address varchar(60),
 Grade int
);
INSERT into student1
Values 
('sriza','pokhara','A'),
('belika','dharan','B'),
('gina','Butwal','C'),
('kylyee','Chitwan','A');

SELECT * FROM student1