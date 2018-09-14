-- HACKERRANK SQL: BASIC SELECT
-- https://www.hackerrank.com/challenges/weather-observation-station-4/problem
-- Level: EASY
-- Points: 10
-- Result: PASSED

SELECT COUNT(*) - COUNT(DISTINCT CITY)
FROM STATION;
