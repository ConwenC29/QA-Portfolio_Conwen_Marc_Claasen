-- =========================================
-- OUTLIER DETECTION TESTS
-- =========================================

-- 1. Extremely high salaries
SELECT *
FROM salaries
WHERE base_salary > 200000;

-- 2. Extremely high bonuses
SELECT *
FROM salaries
WHERE bonus > 50000;

-- 3. Employees with unusually low salaries
SELECT *
FROM salaries
WHERE base_salary < 1000;
