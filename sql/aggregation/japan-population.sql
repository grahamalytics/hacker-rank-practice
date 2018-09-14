-- HACKERRANK SQL: AGGREGATIONS
-- https://www.hackerrank.com/challenges/japan-population/problem
-- Level: EASY
-- Points: 10
-- Result: PASSED

SELECT SUM(POPULATION)
FROM CITY
WHERE COUNTRYCODE = 'JPN';
