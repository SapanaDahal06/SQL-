CREATE DATABASE sapana;
USE sapana;

CREATE TABLE students(
    rollno INT PRIMARY KEY,
    name VARCHAR(50),
    marks INT NOT NULL,
    grade VARCHAR(1),
    city VARCHAR(20)
);

INSERT INTO students (rollno, name, marks, grade, city)
VALUES
(1, 'Sapana', 92, 'A', 'Kathmandu'),
(2, 'Purnima', 85, 'B', 'Pokhara'),
(3, 'Sanjana', 78, 'C', 'Dharan'),
(4, 'Ramesh', 88, 'B', 'Butwal'),
(5, 'Sita', 95, 'A', 'Biratnagar'),
(6, 'Hari', 67, 'D', 'Janakpur'),
(7, 'Aayush', 81, 'B', 'Chitwan'),
(8, 'Priya', 73, 'C', 'Nepalgunj'),
(9, 'Bikash', 59, 'F', 'Hetauda');

SELECT * FROM students;

SELECT name, marks
FROM students;

SELECT city
FROM students;

SELECT DISTINCT city
FROM students;

SELECT *
FROM students
WHERE city = 'Janakpur';

SELECT *
FROM students
WHERE marks > 80;

SELECT *
FROM students
WHERE grade = 'A';

SELECT *
FROM students
WHERE city = 'Hetauda' AND marks > 50;

SELECT *
FROM students
WHERE grade = 'A' OR marks > 80;

SELECT *
FROM students
WHERE marks BETWEEN 80 AND 90;

SELECT *
FROM students
WHERE city IN ('Kathmandu', 'Dharan');

SELECT *
FROM students
WHERE city NOT IN ('Kathmandu', 'Dharan');

SELECT TOP 5 *
FROM students;

SELECT TOP 3 *
FROM students
ORDER BY marks DESC;

SELECT *
FROM students
ORDER BY marks ASC;

SELECT *
FROM students
ORDER BY marks DESC;

SELECT *
FROM students
ORDER BY grade ASC;

SELECT *
FROM students
ORDER BY grade DESC;


/* Aggregate Functions (COUNT, SUM, AVG, MIN, MAX)*/
SELECT COUNT(*)
FROM students;

SELECT COUNT(*)
FROM students
WHERE grade = 'A';

select COUNT(*)
from students
where marks > 80;

select COUNT(*)
from students
where marks < 70;

/*SUM use to add values.*/
select SUM(marks)
from students;

select SUM(rollno)
from students;

SELECT AVG(marks)
FROM students;

select MAX(marks)
from students;

select MIN(marks)
from students
/* Group  by */

SELECT grade, COUNT(*)
FROM students
GROUP BY grade;


SELECT marks , COUNT(*)
FROM students
GROUP BY marks;

SELECT grade, AVG(marks)
FROM students
GROUP BY grade;


SELECT grade, MAX(marks)
FROM students
GROUP BY grade;


SELECT grade, MIN(marks)
FROM students
GROUP BY grade;


SELECT city , COUNT(rollno)
FROM students
GROUP BY city
HAVING MAX(marks) > 90;

SELECT grade, COUNT(*)
FROM students
GROUP BY grade
HAVING COUNT(*) > 1;

SELECT grade, AVG(marks)
FROM students
GROUP BY grade
HAVING AVG(marks) > 90;

SELECT grade, MIN(marks)
FROM students
GROUP BY grade
HAVING MIN(marks) < 70;



/* if i wanna change my table from A to O */
update students
set grade = 'O'
where grade = 'A';


update students 
set marks = 12
where marks = 74;



update students
set name = 'Riva'
where name = 'Bikash';


update students
set grade = 'A'
where grade = 'F';
/* if u wanna change marks by 1 or whatever*/ 

update students
set marks = marks + 1;

select * from students;


/* delete (to delete exiting rows )
*/
delete from students
where marks < 50;

select * from students;


/* to add something in table */

ALTER TABLE students
ADD age INT;


ALTER TABLE students
DROP COLUMN age;

select * from students;


ALTER TABLE students
RENAME 