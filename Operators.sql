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

-- Insert Data
INSERT INTO Student (StudentID, Name, Age, Gender, City, Marks, Grade)
VALUES
(1, 'Sapana', 22, 'Female', 'Kathmandu', 92, 'A'),
(2, 'Purnima', 21, 'Female', 'Pokhara', 85, 'B'),
(3, 'Ramesh', 23, 'Male', 'Butwal', 78, 'C'),
(4, 'Sita', 20, 'Female', 'Dharan', 95, 'A'),
(5, 'Hari', 24, 'Male', 'Janakpur', 67, 'D'),
(6, 'Aayush', 22, 'Male', 'Chitwan', 81, 'B'),
(7, 'Priya', 21, 'Female', 'Nepalgunj', 73, 'C'),
(8, 'Bikash', 25, 'Male', 'Hetauda', 59, 'F'),
(9, 'Anisha', 23, 'Female', 'Kathmandu', 88, 'B'),
(10, 'Rohan', 22, 'Male', 'Pokhara', 91, 'A');

SELECT * FROM Student;
