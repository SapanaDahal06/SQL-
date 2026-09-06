USE sapana;

CREATE TABLE LEA (
    ID INT,
    NAME VARCHAR(90),
    AGE INT,
    COURSE VARCHAR(88),
    MARKS INT
);

INSERT INTO LEA (ID, NAME, AGE, COURSE, MARKS) 
VALUES 
(1, 'Ram', 24, 'BCA', 87),
(2, 'Hari', 31, 'MBA', 49),
(3, 'Gita', 25, 'DE', 88),
(4, 'Muna', 22, 'BBA', 78);

SELECT * FROM LEA;