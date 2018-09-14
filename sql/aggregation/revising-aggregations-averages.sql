-- HACKERRANK SQL: AGGREGATIONS
-- https://www.hackerrank.com/challenges/revising-aggregations-the-average-function/problem
-- Level: EASY
-- Points: 10
-- Result: PASSED

SELECT AVG(POPULATION)
FROM CITY
WHERE DISTRICT = 'California';
