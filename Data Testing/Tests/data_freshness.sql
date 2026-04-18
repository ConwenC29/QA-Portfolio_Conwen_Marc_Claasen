-- =========================================
-- DATA FRESHNESS TESTS
-- =========================================

-- 1. Latest salary update
SELECT MAX(updated_at) AS last_update
FROM salaries;

-- 2. Records not updated recently (example: older than 1 year)
SELECT *
FROM salaries
WHERE updated_at < DATEADD(YEAR, -1, GETDATE());
