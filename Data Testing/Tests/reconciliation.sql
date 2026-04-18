-- =========================================
-- RECONCILIATION TESTS
-- =========================================

-- 1. Total payroll calculation
SELECT SUM(total_salary) AS total_payroll
FROM salaries;

-- 2. Expected vs actual employee salary count
SELECT 
    (SELECT COUNT(*) FROM employees WHERE employee_id IS NOT NULL) AS total_employees,
    (SELECT COUNT(DISTINCT employee_id) FROM salaries) AS employees_with_salary;

-- 3. Compare base + bonus vs total aggregated
SELECT 
    SUM(base_salary + bonus) AS calculated_total,
    SUM(total_salary) AS recorded_total
FROM salaries;
