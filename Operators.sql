--Operators in Sql
use itme;


-- Create Student Table
CREATE TABLE Student (
    StudentID INT PRIMARY KEY,
    Name VARCHAR(50),
    Age INT,
    Gender VARCHAR(10),
    City VARCHAR(50),
    Marks INT,
    Grade CHAR(1)
);
SELECT * FROM Student;
