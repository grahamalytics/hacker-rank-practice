-- HACKERRANK SQL: ADVANCED SELECT
-- https://www.hackerrank.com/challenges/occupations/problem
-- Level: MEDIUM
-- Points: 30
-- Result: PASSED

SELECT MIN(doctor), MIN(Professor), MIN(Singer), MIN(Actor) -- use aggregation to satisfy group by
FROM
(
Select RANK() OVER(PARTITION BY occupation ORDER BY name) rank,  -- rank names sorted alphabetically within profession
    -- created new columns using CASE that contain names of specified profession
    CASE OCCUPATION WHEN 'Doctor' THEN name END AS doctor,
    CASE OCCUPATION WHEN 'Professor' THEN name END AS professor,
    CASE OCCUPATION WHEN 'Singer' THEN name END AS singer,
    CASE OCCUPATION WHEN 'Actor' THEN name END AS actor
FROM occupations
)
GROUP BY rank
ORDER BY rank;

