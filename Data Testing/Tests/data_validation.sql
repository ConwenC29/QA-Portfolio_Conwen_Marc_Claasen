-- =========================================
-- DATA VALIDATION TESTS
-- =========================================

-- 1. Negative or zero salary
SELECT *
FROM salaries
WHERE base_salary <= 0;

-- 2. Bonus exceeds 50% of base salary
SELECT *
FROM salaries
WHERE bonus > base_salary * 0.5;

-- 3. Future hire dates
SELECT *
FROM employees
WHERE hire_date > GETDATE();

-- 4. NULL salary fields
SELECT *
FROM salaries
WHERE base_salary IS NULL
   OR bonus IS NULL
   OR total_salary IS NULL;
