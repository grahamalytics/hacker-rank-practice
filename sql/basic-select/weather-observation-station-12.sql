-- HACKERRANK SQL: BASIC SELECT
-- https://www.hackerrank.com/challenges/weather-observation-station-12/problem
-- Level: EASY
-- Points: 15
-- Result: PASSED

SELECT DISTINCT CITY
FROM STATION
WHERE LOWER(SUBSTR(CITY, 1, 1)) NOT IN ('a', 'e', 'i', 'o', 'u')
AND LOWER(SUBSTR(CITY, LENGTH(CITY))) NOT IN ('a', 'e', 'i', 'o', 'u');

---- Alternate Query using Regex
SELECT DISTINCT CITY
FROM STATION
WHERE REGEXP_LIKE(LOWER(SUBSTR(CITY, 1, 1)), '^[^aeiou]')
AND REGEXP_LIKE(LOWER(SUBSTR(CITY, 1, LENGTH(CITY))), '[^aeiou]$');
