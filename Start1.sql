USE sapana;

CREATE TABLE employees (
    id INT,
    Name VARCHAR(40),
    Department VARCHAR(50),
    Salary INT
);

INSERT INTO employees
VALUES 
(1, 'Ram', 'IT', 500000),
(2, 'Sita', 'HR', 600000),
(3, 'Hari', 'IT', 80000),
(4, 'Gita', 'Finance', 900000);

SELECT * FROM employees;

SELECT * FROM  employees
Where Department = 'IT';

SELECT name , salary 
from employees;