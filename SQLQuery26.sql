use sapana;
CREATE TABLE em (
    id INT,
    Name VARCHAR(40),
    Department VARCHAR(50),
    Salary INT
);

INSERT INTO em
VALUES 
(1, 'Ram', 'IT', 500000),
(2, 'Sita', 'HR', 600000),
(3, 'Hari', 'IT', 800000),
(4, 'Gita', 'Finance', 900000);
SELECT * FROM em;

select * from em
ORDER BY  Salary ASC; 

select * from em
order by Salary desc;

select DISTINCT department 
from em;

SELECT department
from em;