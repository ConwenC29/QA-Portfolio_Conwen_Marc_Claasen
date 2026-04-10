# API Testing Portfolio - Authentication (Reqres)

## Overview

This project demonstrates API testing for authentication functionality using Reqres as a mock backend service.

## Scope

The following scenarios were tested:

* Valid login
* Invalid credentials
* Missing fields
* Input validation
* Security testing (API key validation, injection attempts)

## Tools Used

* Postman (API testing)
* GitHub (version control)

## Test Coverage

* Positive and negative test scenarios
* Status code validation
* Response body validation
* Authentication handling (API key requirement)

## Notes

Reqres API requires an API key for all `/api/*` endpoints.
All requests were tested with and without the API key to validate security behavior.

## How to Use

1. Import the Postman collection from `/collections`
2. Add your API key in headers:

   * `x-api-key: pub_6c0ac9c77add0c2bee686ae62be52632403d3f6de5361683cfb034914f82bcb7
3. Run the requests and view test results

---

This project complements UI test cases by demonstrating backend validation and API-level testing.
