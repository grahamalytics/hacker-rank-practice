-- HACKERRANK SQL: BASIC SELECT
-- https://www.hackerrank.com/challenges/weather-observation-station-10/problem
-- Level: EASY
-- Points: 10
-- Result: PASSED

SELECT DISTINCT CITY
FROM STATION
WHERE LOWER(SUBSTR(CITY, LENGTH(CITY))) NOT IN ('a', 'e', 'i', 'o', 'u');

---- Alternate Query using Regex
SELECT DISTINCT CITY
FROM STATION
WHERE REGEXP_LIKE(LOWER(SUBSTR(CITY, LENGTH(CITY))), '[^aeiou]$');
