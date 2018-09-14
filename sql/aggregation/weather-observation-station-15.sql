-- HACKERRANK SQL: AGGREGATIONS
-- https://www.hackerrank.com/challenges/weather-observation-station-15/problem
-- Level: EASY
-- Points: 15
-- Result:

SELECT ROUND(LONG_W, 4)
FROM STATION
WHERE ID = (
  SELECT ID, MAX(LAT_N)
  FROM STATION
  WHERE LAT_N  < 137.2345
);
