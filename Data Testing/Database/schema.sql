-- =========================================
-- HR & Payroll Database Schema
-- =========================================

-- Drop tables if they exist (for reruns)
IF OBJECT_ID('salaries', 'U') IS NOT NULL DROP TABLE salaries;
IF OBJECT_ID('employees', 'U') IS NOT NULL DROP TABLE employees;
IF OBJECT_ID('departments', 'U') IS NOT NULL DROP TABLE departments;
IF OBJECT_ID('managers', 'U') IS NOT NULL DROP TABLE managers;

-- =========================================
-- Departments
-- =========================================
CREATE TABLE departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(100) NOT NULL
);

-- =========================================
-- Managers
-- =========================================
CREATE TABLE managers (
    manager_id INT PRIMARY KEY,
    manager_name VARCHAR(100) NOT NULL
);

-- =========================================
-- Employees
-- =========================================
CREATE TABLE employees (
    employee_id INT,
    name VARCHAR(100),
    department_id INT,
    manager_id INT,
    hire_date DATE
    -- Intentionally NOT enforcing constraints to allow bad data
);

-- =========================================
-- Salaries
-- =========================================
CREATE TABLE salaries (
    salary_id INT IDENTITY(1,1) PRIMARY KEY,
    employee_id INT,
    base_salary DECIMAL(10,2),
    bonus DECIMAL(10,2),
    total_salary DECIMAL(10,2),
    updated_at DATETIME DEFAULT GETDATE()
);
