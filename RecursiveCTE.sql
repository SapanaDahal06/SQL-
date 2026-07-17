use ABC;
SELECT 2 + 1  AS Number;

WITH Number AS 
(
SELECT 1 AS Number
UNION 
SELECT 2
)

SELECT * 
FROM Number;