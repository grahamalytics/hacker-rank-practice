-- HACKERRANK SQL: AGGREGATIONS
-- https://www.hackerrank.com/challenges/earnings-of-employees/problem
-- Level: EASY
-- Points: 20
-- Result: PASSSED

SELECT SALARY * MONTHS || '  ' || COUNT(*)
FROM EMPLOYEE
WHERE SALARY * MONTHS = (
  SELECT MAX(SALARY * MONTHS) AS MAX_EARNINGS
  FROM EMPLOYEE
)
GROUP BY SALARY * MONTHS;
