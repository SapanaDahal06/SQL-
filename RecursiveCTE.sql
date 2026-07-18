use ABC;
-- Lesson 1: Simple SELECT
--------------------------------------------------

SELECT 2 + 1 AS Number;
-- Lesson 2: Normal CTE
--------------------------------------------------

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