# Manual Testing Portfolio - Authentication System
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
## Overview

This project demonstrates manual testing of an authentication system, focusing on the login, forgot password, and reset password functionalities.

The objective is to showcase structured test design, functional validation, and coverage of positive, negative, and security-related scenarios.

-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
## Scope

The following components were tested:

### Login Page

* Username validation
* Password validation
* Login button behaviour
* Authentication handling
* Session timeout
* Account lockout after multiple failed attempts

### Forgot Password Flow

* Username validation
* Email trigger for password reset
* Handling of invalid users

### Reset Password Flow

* Password validation rules
* Confirm password matching
* Reset link expiry and reuse validation

-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
## Test Coverage

The test suite includes:

* Positive test scenarios (valid login, successful password reset)
*  Negative test scenarios (invalid credentials, missing inputs)
*  Edge cases (boundary values, input limits)
*  Security scenarios:
  - Account lockout after 3 failed attempts
  - Session timeout after inactivity
  - Reset link expiration and single-use validation

-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
## Test Design Approach

Test cases were designed using the following techniques:

* Boundary Value Analysis (e.g. password length limits)
* Equivalence Partitioning (valid vs invalid inputs)
* Negative Testing (error handling and validation)
* State Transition Testing (login attempts, lockout behaviour)

-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
## Test Case Structure

Each test case includes:

* Test Case ID
* Priority & Severity
* Test Type (Positive / Negative / Security)
* Preconditions
* Test Steps
* Expected Results
* Postconditions

-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
## Key Functional Rules Covered

* Username:

  * Maximum 15 characters
  * Letters and underscores only
  * No spaces or special characters

* Password:

  * Minimum 4 characters, maximum 8
  * Must include at least one uppercase letter and one number
  * No spaces allowed

* Login Behaviour:

  * Login button enabled only when criteria met
  * Account lockout after 3 failed attempts (5 minutes)
  * Session timeout after 5 minutes of inactivity

-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
## Tools Used

* Manual Testing Techniques
* Test Case Documentation (Excel / Markdown)
* GitHub for version control

-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
## Notes

This project is part of a broader QA portfolio and is complemented by API testing using Postman to validate backend authentication behaviour.

-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
## Key Learnings

* Designing comprehensive test scenarios for authentication systems
* Aligning test cases with business and functional requirements
* Identifying edge cases and security risks
* Structuring test documentation for clarity and maintainability

-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

This project demonstrates practical QA skills and real-world testing approaches applicable to web-based authentication systems.
