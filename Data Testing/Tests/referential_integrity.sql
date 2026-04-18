-- =========================================
-- REFERENTIAL INTEGRITY TESTS
-- =========================================

-- 1. Employees with invalid department
SELECT e.*
FROM employees e
LEFT JOIN departments d ON e.department_id = d.department_id
WHERE d.department_id IS NULL;

-- 2. Employees with invalid manager
SELECT e.*
FROM employees e
LEFT JOIN managers m ON e.manager_id = m.manager_id
WHERE m.manager_id IS NULL;

-- 3. Salaries linked to non-existent employees
SELECT s.*
FROM salaries s
LEFT JOIN employees e ON s.employee_id = e.employee_id
WHERE e.employee_id IS NULL;
