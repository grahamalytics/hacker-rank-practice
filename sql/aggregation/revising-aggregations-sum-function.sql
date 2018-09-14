-- HACKERRANK SQL: AGGREGATIONS
-- https://www.hackerrank.com/challenges/revising-aggregations-sum/problem
-- Level: EASY
-- Points: 10
-- Result: PASSED

SELECT SUM(POPULATION)
FROM CITY
WHERE DISTRICT = 'California';
