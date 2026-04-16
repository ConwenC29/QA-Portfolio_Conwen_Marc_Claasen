### API TESTING PATTERNS

1. CONTRACT TESTING BETWEEN SERVICES
    Verify that the API responses matches an agreed schema. If the provider changes a field name or type
    the contract test fails before any intergration breaks.

    WHEN TO USE:
    - Microservices communicate via API. A Backend change silently breaks the frontend.

    WHAT TO TEST:
    - Pact, custom JSON schema validators, Playwright API assertions with schema checks.

2. NEGATIVE TESTING WITH MALFORMED DATA
    Send intentioanlly wrong data: null required fileds, strings where numbers are expected, SQL injection patterns,
    oversized payloads, empty arrays. Verify the API rejects them gracefully.

    WHEN TO USE:
    - You need to know your API fails safely. A 500 error on bad is a security and UX problem.

    WHAT TO TEST:
    - Every input field with null, empty string, wrong type, max length +1, special characters.

3. AUTH TOKEN EXPIRATION FLOWS
    Test what happens when a token expires mid-session. Refresh token rotation. Revoked tokens. Tokens from 
    another environment. Missing headers entirely.

    WHEN TO USE:
    - Your app uses JWT, OAuth, or session tokens. Auth bugs are the number 1 source of security incidents.

    WHAT TO TEST:
    - Valid token, expired token, revoked tokens, malformed tokens, missing tokens, wrong enviornment tokens.

