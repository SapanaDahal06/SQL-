CREATE DATABASE XYZ;

CREATE TABLE Employee(
id int primary key,
name varchar(70),
salary int not null
);

insert into Employee(id , name , salary)
values
(101 , 'sarla',25000),
(102 , 'kriti',30000),
(103, 'binu', 40000);

select * FROM Employee 




USE college;

CREATE TABLE student3 (
   id INT PRIMARY KEY,
    name VARCHAR(50),
    marks INT NOT NULL,
    grade VARCHAR(10),
    city VARCHAR(60),
);

INSERT INTO student3 (id, name, marks, grade, city)
VALUES
(1, 'sapana', 90, 'A', 'Kathmandu'),
(2, 'purnima', 87, 'B', 'Gulmi'),
(3, 'sapuu', 88, 'B', 'Gaighat'),
(4, 'sana', 66, 'C', 'Dharan'),
(5, 'ronaldo', 90, 'A', 'Kathmandu'),
(6, 'messi', 89, 'B', 'Karnali');

-- Display specific columns
SELECT name, marks
FROM student3;

SELECT grade, id
FROM student3;

SELECT name, city
FROM student3;

-- Display all records
SELECT *
FROM student3;

-- Students with marks greater than 80
SELECT *
FROM student3
WHERE marks > 80;

-- Students from Kathmandu
SELECT *
FROM student3
WHERE city = 'Kathmandu';

-- Students with marks greater than 85 and city Gaighat
SELECT *
FROM student3
WHERE marks > 85
AND city = 'Gaighat';

-- Arithmetic condition
SELECT *
FROM student3
WHERE marks + 30 > 100;

SELECT *
FROM student3
WHERE marks + 40 > 100;

-- Check rows 5 and 6 specifically
SELECT *
FROM student3
WHERE id IN (5, 6);



CREATE TABLE student3 (
    ...
);