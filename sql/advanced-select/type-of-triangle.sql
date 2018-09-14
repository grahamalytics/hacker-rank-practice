-- HACKERRANK SQL: ADVANCED SELECT
-- https://www.hackerrank.com/challenges/what-type-of-triangle/problem
-- Level: EASY
-- Points: 20
-- Result:

SELECT CASE
        WHEN A = B AND B = C THEN 'Equilateral'
        WHEN (A = B AND B != C) OR (A = C AND B != C) OR (B = C AND A!= C) THEN 'Isosceles'
        WHEN A != B AND A != C AND B != C THEN 'Scalene'
        ELSE 'Not a Triangle' END
FROM TRIANGLES;
