-- =========================================
-- DATA CONSISTENCY TESTS
-- =========================================

-- 1. Validate total_salary calculation
SELECT *
FROM salaries
WHERE total_salary <> (base_salary + bonus);

-- 2. Employees with duplicate names (potential duplicates)
SELECT name, COUNT(*) AS occurrences
FROM employees
GROUP BY name
HAVING COUNT(*) > 1;
