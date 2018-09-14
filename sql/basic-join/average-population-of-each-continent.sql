-- HACKERRANK SQL: BASIC JOIN
-- https://www.hackerrank.com/challenges/average-population-of-each-continent/problem
-- Level: EASY
-- Points: 10
-- Result: PASSED

SELECT COUNTRY.CONTINENT,
       FLOOR(AVG(CITY.POPULATION))
FROM CITY
JOIN COUNTRY
ON CITY.COUNTRYCODE = COUNTRY.CODE
GROUP BY COUNTRY.CONTINENT;
