-- HACKERRANK SQL: BASIC SELECT
-- https://www.hackerrank.com/challenges/weather-observation-station-5/problem
-- Level: EASY
-- Points: 30
-- Result: PASSED

SELECT *
FROM
    ( SELECT  CITY,
              LENGTH(CITY) AS CITY_LENGTH
      FROM STATION
      ORDER BY LENGTH(CITY), CITY
    )
WHERE ROWNUM = 1
UNION
SELECT *
FROM
    ( SELECT  CITY,
              LENGTH(CITY) AS CITY_LENGTH
      FROM STATION
      ORDER BY LENGTH(CITY) DESC, CITY
    )
WHERE ROWNUM = 1;
