USE Company;

DROP TABLE IF EXISTS Coursee;
DROP TABLE IF EXISTS Student;

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

CREATE TABLE Coursee (
    StudentID INT,
    StudentName VARCHAR(50),
    CourseName VARCHAR(50),
    Marks INT
);

INSERT INTO Coursee
VALUES
(1, 'Sapana', 'SQL', 92),
(2, 'Purnima', 'Python', 85),
(3, 'Ramesh', 'Java', 78),
(5, 'Priya', 'Django', 90),
(6, 'Sarina', 'C++', 88);

SELECT * FROM Student;
SELECT * FROM Coursee;

-- INNER JOIN
SELECT *
FROM Student
INNER JOIN Coursee
ON Student.StudentID = Coursee.StudentID;

-- LEFT JOIN
SELECT *
FROM Student
LEFT JOIN Coursee
ON Student.StudentID = Coursee.StudentID;

-- RIGHT JOIN
SELECT *
FROM Student
RIGHT JOIN Coursee
ON Student.StudentID = Coursee.StudentID;

-- FULL JOIN
SELECT *
FROM Student
FULL JOIN Coursee
ON Student.StudentID = Coursee.StudentID;

SELECT *
FROM Student
FULL JOIN Coursee