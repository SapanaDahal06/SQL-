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