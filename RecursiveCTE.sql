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


-- Lesson 3: First Recursive CTE
--------------------------------------------------

WITH Number AS
(
    -- Anchor Member (Starting Point)
    SELECT 1 AS Number

    UNION ALL

    -- Recursive Member
    SELECT Number + 1
    FROM Number
    WHERE Number < 5
)
SELECT *
FROM Number;


-- Lesson 4: Count from 1 to 10
--------------------------------------------------

WITH Number AS
(
    SELECT 1 AS Number

    UNION ALL

    SELECT Number + 1
    FROM Number
    WHERE Number < 10
)
SELECT *
FROM Number;


-- Lesson 5: Count by 2
--------------------------------------------------

WITH Number AS
(
    SELECT 5 AS Number

    UNION ALL

    SELECT Number + 2
    FROM Number
    WHERE Number < 20
)
SELECT *
FROM Number;

WITH Number AS
(
    -- Anchor Member
    SELECT 1 AS Number


UNION ALL

    -- Recursive Member
    SELECT Number + 2
    FROM Number
    WHERE Number < 10
)
SELECT * 
FROM Number;
