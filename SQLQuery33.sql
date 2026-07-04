use sapana;



CREATE TABLE student2 (
    rollno INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    age INT,
    gender VARCHAR(10),
    marks INT NOT NULL,
    grade CHAR(1),
    city VARCHAR(30)
);

INSERT INTO student2 (rollno, name, age, gender, marks, grade, city)
VALUES
(1, 'Sapana', 21, 'Female', 92, 'A', 'Kathmandu'),
(2, 'Purnima', 22, 'Female', 85, 'B', 'Pokhara'),
(3, 'Sanjana', 20, 'Female', 78, 'C', 'Dharan'),
(4, 'Ramesh', 23, 'Male', 88, 'B', 'Butwal'),
(5, 'Sita', 21, 'Female', 95, 'A', 'Biratnagar'),
(6, 'Hari', 22, 'Male', 67, 'D', 'Janakpur'),
(7, 'Aayush', 21, 'Male', 81, 'B', 'Chitwan'),
(8, 'Priya', 20, 'Female', 73, 'C', 'Nepalgunj'),
(9, 'Bikash', 24, 'Male', 59, 'F', 'Hetauda'),
(10, 'Kiran', 22, 'Male', 90, 'A', 'Kathmandu');


select * from student2;

EXEC sp_rename 'student2.name', 'fullName', 'COLUMN';

delete from student2
where marks <70;

alter table student2
drop column gender;
