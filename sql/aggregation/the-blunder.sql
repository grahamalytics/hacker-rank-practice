-- HACKERRANK SQL: AGGREGATIONS
-- https://www.hackerrank.com/challenges/the-blunder/problem
-- Level: EASY
-- Points: 15
-- Result: PASSED

SELECT CEIL(AVG(SALARY) - AVG(TO_NUMBER(REGEXP_REPLACE(TO_CHAR(SALARY), '0', ''))))
FROM EMPLOYEES;
