-- =========================================
-- ENTITY INTEGRITY TESTS
-- =========================================

-- 1. Duplicate employee IDs
SELECT employee_id, COUNT(*) AS record_count
FROM employees
GROUP BY employee_id
HAVING COUNT(*) > 1;

-- 2. NULL employee IDs
SELECT *
FROM employees
WHERE employee_id IS NULL;

-- 3. Duplicate salary records (same employee, same values)
SELECT employee_id, base_salary, bonus, total_salary, COUNT(*) AS record_count
FROM salaries
GROUP BY employee_id, base_salary, bonus, total_salary
HAVING COUNT(*) > 1;
