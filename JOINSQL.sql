
use Company;
CREATE TABLE Student (
    StudentID INT PRIMARY KEY,
    StudentName VARCHAR(50),
    City VARCHAR(30),
    Age INT
);

INSERT INTO Student
VALUES
(1, 'Sapana', 'Kathmandu', 22),
(2, 'Purnima', 'Pokhara', 21),
(3, 'Ramesh', 'Butwal', 23),
(4, 'Sita', 'Dharan', 20),
(5, 'Priya', 'Gaighat', 25);

SELECT * FROM Student;

-- Course Table
CREATE TABLE Coursee (
    StudentID INT,
    StudentName VARCHAR(50),
    CourseName VARCHAR(50),
    Marks INT
);