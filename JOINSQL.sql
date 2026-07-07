use Company;
-- Student Table
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
(5, 'Hari', 'Biratnagar', 24);


-- Course Table
CREATE TABLE Course (
    StudentID INT,
    StudentName VARCHAR(50),
    CourseName VARCHAR(50),
    Marks INT
);

INSERT INTO Course
VALUES
(1, 'Sapana', 'SQL', 92),
(2, 'Purnima', 'Python', 85),
(3, 'Ramesh', 'Java', 78),
(5, 'Hari', 'Django', 90),
(6, 'Sarina', 'C++', 88);

SELECT * FROM Student
SELECT * FROM Course

--INNER JOIN 
SELECT *
FROM Student
INNER JOIN Course
ON Student.StudentID = Course.StudentID