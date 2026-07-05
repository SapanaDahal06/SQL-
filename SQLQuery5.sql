CREATE DATABASE College1;
GO

USE College1;
GO

-- Create Student Table
CREATE TABLE STUU (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(50)
);

-- Insert Student Data
INSERT INTO STUU (student_id, student_name)
VALUES
(1, 'Sapana'),
(2, 'Purnima'),
(3, 'Ramesh'),
(4, 'Sita');

-- Create Course Table
CREATE TABLE COUU (
    course_id INT PRIMARY KEY,
    student_id INT,
    course_name VARCHAR(50),
    marks INT
);

-- Insert Course Data
INSERT INTO COUU (course_id, student_id, course_name, marks)
VALUES
(101, 1, 'SQL', 92),
(102, 2, 'Python', 85),
(103, 3, 'Java', 78),
(104, 5, 'Django', 90);

-- Display Tables
SELECT * FROM STUU;
SELECT * FROM COUU;

-- INNER JOIN
SELECT *
FROM STUU
INNER JOIN COUU
ON STUU.student_id = COUU.student_id;

--LEFT JOIN

SELECT *
FROM STUU
LEFT JOIN COUU
ON STUU.student_id = COUU.student_id;


--RIGHT JOIN
SELECT *
FROM STUU
RIGHT JOIN COUU
ON STUU.student_name = COUU.course_name;

/*FULL JOIN 
SELECT *
FROM STUU
FULL OUTER JOIN COUU
ON STUU.student_id = COUU.student_id;*/

--FULL JOIN

SELECT *
FROM STUU
LEFT JOIN COUU
ON STUU.student_id = COUU.student_id
UNION

SELECT *
FROM STUU
RIGHT JOIN COUU
ON STUU.student_id = COUU.student_id;
