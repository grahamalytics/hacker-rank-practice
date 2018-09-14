-- HACKERRANK SQL: BASIC SELECT
-- https://www.hackerrank.com/challenges/revising-the-select-query-2/problem
-- Level: EASY
-- Points: 10
-- Result: PASSED

SELECT NAME
FROM CITY
WHERE POPULATION > 120000
AND COUNTRYCODE = 'USA';
