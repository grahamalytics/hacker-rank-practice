-- HACKERRANK SQL: ADVANCED SELECT
-- https://www.hackerrank.com/challenges/the-company/problem
-- Level: MEDIUM
-- Points: 30
-- Result: PASSED

SELECT c.company_code, c.founder,
       COUNT(DISTINCT lm.lead_manager_code) AS uniq_lead_managers,
       COUNT(DISTINCT sm.senior_manager_code) AS uniq_senior_managers,
       COUNT(DISTINCT m.manager_code) AS uniq_managers,
       COUNT(DISTINCT e.employee_code) AS uniq_employees
FROM Company c
JOIN Lead_Manager lm ON c.company_code = lm.company_code
JOIN Senior_manager sm ON c.company_code = sm.company_code
JOIN Manager m ON c.company_code = m.company_code
JOIN Employee e ON c.company_code = e.company_code
GROUP BY c.company_code, c.founder
ORDER BY c.company_code;
