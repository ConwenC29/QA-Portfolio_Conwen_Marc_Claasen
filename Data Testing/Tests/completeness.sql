-- =========================================
-- COMPLETENESS TESTS
-- =========================================

-- 1. Employees without salary records
SELECT e.*
FROM employees e
LEFT JOIN salaries s ON e.employee_id = s.employee_id
WHERE s.employee_id IS NULL;

-- 2. Employees missing critical data
SELECT *
FROM employees
WHERE name IS NULL
   OR department_id IS NULL
   OR manager_id IS NULL;
