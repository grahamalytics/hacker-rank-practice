-- HACKERRANK SQL: AGGREGATIONS
-- https://www.hackerrank.com/challenges/weather-observation-station-14/problem
-- Level: EASY
-- Points: 10
-- Result: PASSED

SELECT ROUND(MAX(LAT_N), 4)
FROM STATION
WHERE LAT_N < 137.2345;
