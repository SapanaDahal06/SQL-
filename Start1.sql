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
(3, 'Hari', 'IT', 800000),
(4, 'Gita', 'Finance', 900000);

SELECT * FROM employees;

SELECT * FROM  employees
Where Department = 'IT';

SELECT name , salary 
from employees;

Select * from employees
where Salary > 500000;

 --operators -- 
Select * from employees
where Salary >= 500000;

Select * From employees
where Department <> 'HR';

Select * from employees
where Salary> 50000;


Select * from employees
where Salary>= 50000;

Select * from employees
where Salary < 90000;

Select * from employees
where Salary <= 800000;

--AND --
Select * from employees
where Department = 'IT'
 AND salary > 600000;

 Select * from employees
 where Department = 'IT'
 OR Department = 'HR';

 SELECT *
FROM employees
WHERE NOT department = 'HR';