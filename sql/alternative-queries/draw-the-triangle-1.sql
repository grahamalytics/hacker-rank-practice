-- HACKERRANK SQL: ALTERNATIVE QUERIES
-- https://www.hackerrank.com/challenges/draw-the-triangle-1/problem
-- Level: EASY
-- Points: 25
-- Result:

SELECT RPAD('*', LEVEL , ' *')
FROM DUAL
CONNECT BY LEVEL <= 20
ORDER BY 1 DESC;
