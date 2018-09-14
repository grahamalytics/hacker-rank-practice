-- HACKERRANK SQL: BASIC SELECT
-- https://www.hackerrank.com/challenges/salary-of-employees/problem
-- Level: EASY
-- Points: 10
-- Result: PASSED

SELECT NAME
FROM EMPLOYEE
WHERE SALARY > 2000
AND MONTHS < 10
ORDER BY EMPLOYEE_ID;
