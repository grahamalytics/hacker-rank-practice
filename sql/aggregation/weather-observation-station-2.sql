-- HACKERRANK SQL: AGGREGATIONS
-- https://www.hackerrank.com/challenges/weather-observation-station-2/problem
-- Level: EASY
-- Points: 15
-- Result: PASSED

SELECT ROUND(SUM(LAT_N), 2) AS LAT,
       ROUND(SUM(LONG_W), 2) AS LON
FROM STATION;
