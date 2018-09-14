-- HACKERRANK SQL: BASIC SELECT
-- https://www.hackerrank.com/challenges/revising-the-select-query/problem
-- Level: EASY
-- Points: 10
-- Result: PASSED

SELECT  *
FROM CITY
WHERE COUNTRYCODE = 'USA'
AND POPULATION > 100000;
