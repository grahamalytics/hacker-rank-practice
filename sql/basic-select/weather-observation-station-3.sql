-- HACKERRANK SQL: BASIC SELECT
-- https://www.hackerrank.com/challenges/weather-observation-station-3/problem
-- Level: EASY
-- Points: 10
-- Result: PASSED

SELECT DISTINCT CITY
FROM STATION
WHERE MOD(ID, 2) = 0;
