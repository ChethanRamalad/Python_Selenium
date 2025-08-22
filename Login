import time
from selenium import webdriver
from selenium.webdriver.common.by import By

class LoginTest:
    def __init__(self, username, password):
        self.username = username  # store username
        self.password = password  # store password
        self.driver = webdriver.Chrome()  # create browser

    def run_test(self):
        self.driver.get("https://practicetestautomation.com/practice-test-login/")

        # Enter username
        self.driver.find_element(By.ID, "username").send_keys(self.username)
        # Enter password
        self.driver.find_element(By.ID, "password").send_keys(self.password)
        # Click login button
        self.driver.find_element(By.ID, "submit").click()

        time.sleep(5)  # wait to see result
        print("Test finished. Current URL:", self.driver.current_url)
        self.driver.quit()

#To run the test with correct credentials (positive test)
positive_test = LoginTest("student", "Password123")
positive_test.run_test()

#To run the test with wrong credentials (negative test)
#negative_test = LoginTest("wronguser", "wrongpass")
#negative_test.run_test()
