from playwright.sync_api import sync_playwright
from pages.login_page import LoginPage
from utils.config import config


def test_valid_login():
    with sync_playwright() as p:
        browser = getattr(p, config.BROWSER).launch(headless=config.HEADLESS)
        page = browser.new_page()
        login_page = LoginPage(page)

        login_page.navigate()
        login_page.login(config.VALID_USERNAME, config.VALID_PASSWORD)

        assert "inventory" in page.url

        browser.close()


def test_invalid_login():
    with sync_playwright() as p:
        browser = getattr(p, config.BROWSER).launch(headless=config.HEADLESS)
        page = browser.new_page()
        login_page = LoginPage(page)

        login_page.navigate()
        login_page.login(config.INVALID_USERNAME, config.INVALID_PASSWORD)

        error = login_page.get_error_message()
        assert "Username and password do not match" in error

        browser.close()
