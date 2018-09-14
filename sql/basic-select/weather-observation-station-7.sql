-- HACKERRANK SQL: BASIC SELECT
-- https://www.hackerrank.com/challenges/weather-observation-station-7/problem
-- Level: EASY
-- Points: 10
-- Result: PASSED

SELECT DISTINCT CITY
FROM STATION
WHERE LOWER(SUBSTR(CITY, LENGTH(CITY))) IN ('a', 'e', 'i', 'o', 'u');

---- Alternate Querie using RegEx
SELECT DISTINCT CITY
FROM STATION
WHERE REGEXP_LIKE(LOWER(SUBSTR(CITY, LENGTH(CITY))), '[aeiou]');
