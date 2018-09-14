-- HACKERRANK SQL: BASIC SELECT
-- https://www.hackerrank.com/challenges/more-than-75-marks/problem
-- Level: EASY
-- Points: 15
-- Result: PASSED

SELECT NAME
FROM STUDENTS
WHERE MARKS > 75
ORDER BY LOWER(SUBSTR(NAME, LENGTH(NAME) - 2)), ID;
