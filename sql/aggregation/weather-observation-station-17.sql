-- HACKERRANK SQL: AGGREGATION
-- https://www.hackerrank.com/challenges/weather-observation-station-17/problem
-- Level: EASY
-- Points: 15
-- Result: PASSED

SELECT ROUND(LONG_W, 4)
FROM STATION
WHERE LAT_N = (
  SELECT MIN(LAT_N)
  FROM STATION
  WHERE LAT_N > 38.7780 );
