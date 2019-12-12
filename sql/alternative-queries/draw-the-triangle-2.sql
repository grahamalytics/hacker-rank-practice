-- HACKERRANK SQL: ALTERNATIVE QUERIES
-- https://www.hackerrank.com/challenges/draw-the-triangle-2/problem
-- Level: EASY
-- Points: 25
-- Result: PASSED

SELECT RPAD('*', LEVEL*2, ' *')
FROM DUAL
CONNECT BY LEVEL <= 20
ORDER BY 1 ASC;