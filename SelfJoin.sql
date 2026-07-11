use Company;

CREATE TABLE Employe (
EmpID INT PRIMARY KEY,
EmpName VARCHAR(50),
ManagerID int
);
SELECT * FROM Employe;


Insert  into Employe 
Values
(1, 'sherya',NULL),
(2,'prabisha',2),
(3, 'Anshula' , 2),
(4, 'Khusi',1);

