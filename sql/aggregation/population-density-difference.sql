-- HACKERRANK SQL: AGGREGATIONS
-- https://www.hackerrank.com/challenges/population-density-difference/problem
-- Level: EASY
-- Points: 10
-- Result: PASSED

SELECT MAX(POPULATION) - MIN(POPULATION)
FROM CITY;
