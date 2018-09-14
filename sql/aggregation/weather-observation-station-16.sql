-- HACKERRANK SQL: AGGREGATIONS
-- https://www.hackerrank.com/challenges/weather-observation-station-16/problem
-- Level: EASY
-- Points: 10
-- Result: PASSED

SELECT ROUND(MIN(LAT_N), 4)
FROM STATION
WHERE LAT_N > 38.7780;
