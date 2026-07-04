CREATE DATABASE itme;
GO

USE itme;
GO

CREATE TABLE Customer(
    ID INT PRIMARY KEY,
    Name VARCHAR(60),
    Age INT NOT NULL,
    City VARCHAR(50),
    Salary NUMERIC(10,2)
);

INSERT INTO Customer (ID, Name, Age, City, Salary)
VALUES
(1, 'SAM', 23, 'DUBAI', 90000),
(2, 'Nargish', 24, 'America', 100000),

INSERT INTO Customer (ID, Name, Age, City, Salary)
VALUES
(3, 'John', 30, 'London', 120000),
(4, 'Emma', 28, 'New York', 95000);


-- Display Table
SELECT * FROM Customer;



--Update Values 
Update Customer
Set Name= 'Sarina',Age = 29
Where ID = 1;

update Customer
set City = 'Australia' , Age = 22
where ID = 1;
