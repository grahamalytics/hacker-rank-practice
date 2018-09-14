-- HACKERRANK SQL: BASIC JOIN
-- https://www.hackerrank.com/challenges/asian-population/problem
-- level: EASY
-- Points: 10
-- Result: PASSED

SELECT SUM(CITY.POPULATION)
FROM CITY
JOIN COUNTRY
ON CITY.COUNTRYCODE = COUNTRY.CODE
WHERE COUNTRY.CONTINENT = 'Asia';
