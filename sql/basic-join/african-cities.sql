-- HACKERRANK SQL: BASIC JOIN
-- https://www.hackerrank.com/challenges/african-cities/problem
-- level: EASY
-- Points: 10
-- Result: PASSED

SELECT CITY.NAME
FROM CITY
JOIN COUNTRY
ON CITY.COUNTRYCODE = COUNTRY.CODE
WHERE COUNTRY.CONTINENT = 'Africa';
