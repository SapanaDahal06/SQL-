use Company;

CREATE TABLE Student (
    StudentID INT PRIMARY KEY,
    StudentName VARCHAR(50),
    City VARCHAR(30)
);

INSERT INTO Student
VALUES
(1,'Sapana','Kathmandu'),
(2,'Purnima','Pokhara'),
(3,'Ramesh','Butwal'),
(4,'Sita','Dharan');

SELECT * FROM Student;