import os

class Config:
    BASE_URL = "https://www.saucedemo.com/"

    # Test Credentials
    VALID_USERNAME = "standard_user"
    VALID_PASSWORD = "secret_sauce"

    INVALID_USERNAME = "invalid_user"
    INVALID_PASSWORD = "wrong_password"

    # Browser Settings
    HEADLESS = False
    BROWSER = "chromium"  # options: chromium, firefox, webkit

    # Timeout
    TIMEOUT = 5000

config = Config()
