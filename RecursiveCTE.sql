use ABC;
SELECT 2 + 1  AS Number;

WITH Number AS 
(
SELECT 1 AS Number
UNION 
SELECT 2
UNION 
SELECT 3
)

SELECT * 
FROM Number;


WITH Number AS
(
SELECT 1 As Number 
UNION ALL 
SELECT Number + 1 
FROM Number
)
