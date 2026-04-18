# Portfolio Scenario: HR & Payroll Data Integrity Testing
# Scenario Overview
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
You are a Data QA Analyst working on a company’s HR & Payroll system.

The system stores and processes:

- Employees
- Departments
- Managers
- Salaries & bonuses

Your role is to:
- Ensure data accuracy, consistency, and reliability before payroll reports are generated.
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

# Data Model 
Tables:
- Employees
    employee_id (PK)
    name
    department_id (FK)
    manager_id (FK)
    hire_date
- Departments
    department_id (PK)
    department_name
- Managers
    manager_id (PK)
    manager_name
- Salaries
    employee_id (FK)
    base_salary
    bonus
    total_salary
