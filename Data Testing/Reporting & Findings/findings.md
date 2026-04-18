# 📊 Data Integrity Findings Report

**Project:** HR & Payroll Data Integrity Testing
**Author:** Conwen Claasen
**Date:** 10 April 2026

---

## 1. Overview

This report summarizes the results of data integrity, validation, and reconciliation testing performed on the HR & Payroll dataset.

The objective of this exercise was to identify data quality issues that could impact payroll accuracy, reporting reliability, and overall system integrity.

---

## 2. Scope of Testing

The following data testing areas were covered:

* Entity Integrity (Primary Key Validation)
* Referential Integrity (Foreign Key Relationships)
* Data Validation (Business Rules & Constraints)
* Data Consistency (Cross-field and Cross-table checks)
* Completeness Checks
* Reconciliation Testing
* Outlier Detection
* Data Freshness

---

## 3. Summary of Findings

A total of **multiple data quality issues** were identified across the dataset, including:

* Duplicate and NULL identifiers
* Orphan records (invalid relationships)
* Incorrect salary calculations
* Missing and incomplete data
* Business rule violations
* Potential duplicate employees

These issues can lead to **incorrect payroll processing, inaccurate reporting, and reduced trust in the system**.

---

## 4. Detailed Findings

---

### 4.1 Entity Integrity Issues

**Findings:**

* Duplicate `employee_id` detected (e.g., employee_id = 102)
* NULL `employee_id` present in employee records
* Duplicate salary records identified for the same employee

**Impact:**

* Inconsistent employee tracking
* Duplicate or incorrect payroll calculations
* Data aggregation errors

**Recommendation:**

* Enforce PRIMARY KEY constraints on `employee_id`
* Implement uniqueness checks during data entry

---

### 4.2 Referential Integrity Issues

**Findings:**

* Employees linked to non-existent departments (e.g., department_id = 4)
* Employees assigned to non-existent managers (e.g., manager_id = 3)
* Salary records linked to non-existent employees (e.g., employee_id = 999)

**Impact:**

* Broken relationships in reporting
* Inaccurate organizational structure
* Payroll assigned to invalid entities

**Recommendation:**

* Enforce FOREIGN KEY constraints
* Validate reference data before insertion

---

### 4.3 Data Validation Issues

**Findings:**

* Negative salary values detected
* Bonus values exceeding 50% of base salary
* Future hire dates present in employee records
* NULL salary fields identified

**Impact:**

* Invalid payroll calculations
* Business rule violations
* Misleading analytics and reporting

**Recommendation:**

* Apply validation rules at application and database level
* Implement constraints for salary ranges and date validation

---

### 4.4 Data Consistency Issues

**Findings:**

* Mismatch between `total_salary` and calculated value (`base_salary + bonus`)
* Duplicate employee names indicating potential duplicate records

**Impact:**

* Incorrect payroll outputs
* Data duplication risks
* Loss of data credibility

**Recommendation:**

* Automate calculation of derived fields
* Implement duplicate detection logic

---

### 4.5 Completeness Issues

**Findings:**

* Employees without corresponding salary records
* Records with NULL salary values

**Impact:**

* Incomplete payroll processing
* Missing financial data in reports

**Recommendation:**

* Enforce mandatory fields
* Ensure salary records exist for all active employees

---

### 4.6 Reconciliation Issues

**Findings:**

* Discrepancies between expected and actual payroll totals
* Mismatch between aggregated calculated values and stored totals

**Impact:**

* Financial reporting inaccuracies
* Potential payroll discrepancies

**Recommendation:**

* Implement reconciliation checks as part of data pipelines
* Validate totals before report generation

---

### 4.7 Outlier Detection

**Findings:**

* Unusually high bonus values
* Negative and extremely low salary values

**Impact:**

* Potential data entry errors
* Fraud or misconfiguration risks

**Recommendation:**

* Define acceptable thresholds for salary and bonus values
* Flag anomalies for review

---

### 4.8 Data Freshness

**Findings:**

* Some records may not meet expected update frequency requirements

**Impact:**

* Outdated data affecting reporting accuracy

**Recommendation:**

* Implement monitoring for data update frequency
* Ensure timely data refresh cycles

---

## 5. Root Cause Analysis (High-Level)

The identified issues are likely due to:

* Lack of enforced database constraints
* Insufficient validation at data entry stage
* Absence of automated data quality checks
* Manual data handling without controls

---

## 6. Recommendations Summary

To improve overall data quality:

* Enforce PRIMARY and FOREIGN KEY constraints
* Implement validation rules for business logic
* Automate calculation of derived fields (e.g., total_salary)
* Introduce data quality checks in ETL pipelines
* Monitor and log data anomalies
* Perform regular data reconciliation

---

## 7. Conclusion

The data integrity testing exercise revealed several critical issues that could significantly impact payroll accuracy and reporting reliability.

By implementing the recommended controls and validations, the organization can ensure:

* Improved data accuracy
* Reliable reporting
* Increased confidence in payroll systems

---

## 8. Value Delivered

This testing approach demonstrates:

* Strong SQL and data validation skills
* Understanding of business rules and financial data
* Ability to identify and analyze real-world data issues
* Experience in ensuring data quality for reporting systems

---
