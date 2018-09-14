-- HACKERRANK SQL: BASIC SELECT
-- https://www.hackerrank.com/challenges/weather-observation-station-9/problem
-- Level: EASY
-- Points: 10
-- Result: PASSED

SELECT DISTINCT CITY
FROM STATION
WHERE LOWER(SUBSTR(CITY, 1, 1)) NOT IN ('a', 'e', 'i', 'o', 'u');

---- Alternate Query using Regex
SELECT DISTINCT CITY
FROM STATION
WHERE REGEXP_LIKE(LOWER(SUBSTR(CITY, 1, 1)), '^[^aeiou]');
