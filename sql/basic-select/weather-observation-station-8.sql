-- HACKERRANK SQL: BASIC SELECT
-- https://www.hackerrank.com/challenges/weather-observation-station-8/problem
-- Level: EASY
-- Points: 15
-- Result: PASSED

SELECT DISTINCT CITY
FROM STATION
WHERE LOWER(SUBSTR(CITY, 1,1)) IN ('a', 'e', 'i', 'o', 'u')
AND LOWER(SUBSTR(CITY, LENGTH(CITY))) IN ('a', 'e', 'i', 'o', 'u');

---- Alternate Querie using RegEx
SELECT CITY
FROM STATION
WHERE REGEXP_LIKE(LOWER(SUBSTR(CITY, 1, 1)), '[aeiou]')
AND REGEXP_LIKE(LOWER(SUBSTR(CITY, -1)), '[aeiou]');
