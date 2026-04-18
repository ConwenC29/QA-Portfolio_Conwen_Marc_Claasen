-- =========================================
-- Insert Departments
-- =========================================
INSERT INTO departments VALUES (1, 'Engineering');
INSERT INTO departments VALUES (2, 'HR');
INSERT INTO departments VALUES (3, 'Finance');

-- Missing department_id = 4 (will be referenced incorrectly)

-- =========================================
-- Insert Managers
-- =========================================
INSERT INTO managers VALUES (1, 'Alice Johnson');
INSERT INTO managers VALUES (2, 'Bob Smith');

-- Missing manager_id = 3 (will be referenced incorrectly)

-- =========================================
-- Insert Employees
-- =========================================

-- Valid records
INSERT INTO employees VALUES (101, 'John Doe', 1, 1, '2022-01-10');
INSERT INTO employees VALUES (102, 'Jane Smith', 2, 2, '2021-05-15');

-- Duplicate employee_id (Entity Integrity issue)
INSERT INTO employees VALUES (102, 'Jane Smith Duplicate', 2, 2, '2021-05-15');

-- Invalid department_id (Referential Integrity issue)
INSERT INTO employees VALUES (103, 'Mark Spencer', 4, 1, '2023-03-01');

-- Invalid manager_id (Referential Integrity issue)
INSERT INTO employees VALUES (104, 'Lisa Ray', 1, 3, '2020-07-20');

-- NULL employee_id (Entity Integrity issue)
INSERT INTO employees VALUES (NULL, 'Ghost Employee', 1, 1, '2022-09-01');

-- Future hire date (Data validation issue)
INSERT INTO employees VALUES (105, 'Future Hire', 1, 1, '2030-01-01');

-- Duplicate name (not always wrong, but useful for testing)
INSERT INTO employees VALUES (106, 'John Doe', 1, 1, '2022-11-11');

-- =========================================
-- Insert Salaries
-- =========================================

-- Valid salary
INSERT INTO salaries (employee_id, base_salary, bonus, total_salary)
VALUES (101, 50000, 5000, 55000);

-- Incorrect total_salary (Calculation issue)
INSERT INTO salaries (employee_id, base_salary, bonus, total_salary)
VALUES (102, 60000, 6000, 70000); -- should be 66000

-- Missing salary for employee 103 (Completeness issue)

-- Salary for non-existent employee (Referential issue)
INSERT INTO salaries (employee_id, base_salary, bonus, total_salary)
VALUES (999, 40000, 4000, 44000);

-- Negative salary (Validation issue)
INSERT INTO salaries (employee_id, base_salary, bonus, total_salary)
VALUES (104, -30000, 2000, -28000);

-- Bonus too high (Business rule violation)
INSERT INTO salaries (employee_id, base_salary, bonus, total_salary)
VALUES (105, 50000, 40000, 90000); -- bonus too high (>50%)

-- Correct structure but duplicate salary entry (Duplicate issue)
INSERT INTO salaries (employee_id, base_salary, bonus, total_salary)
VALUES (101, 50000, 5000, 55000);

-- Null values (Completeness issue)
INSERT INTO salaries (employee_id, base_salary, bonus, total_salary)
VALUES (106, NULL, NULL, NULL);
