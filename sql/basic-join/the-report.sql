-- HACKERRANK SQL: BASIC JOIN
-- https://www.hackerrank.com/challenges/the-report/problem
-- Level: MEDIUM
-- Points: 20
-- Result: PASSED

SELECT CASE
         WHEN g.Grade < 8 THEN NULL
         ELSE s.Name
       END,
       g.Grade,
       s.Marks
FROM Students s
JOIN Grades g
ON s.Marks >= Min_Mark AND s.Marks <= Max_Mark
ORDER BY g.Grade DESC, s.Name, s.Marks DESC;
