from selenium import webdriver
from selenium.webdriver.common.by import By


# Create a new instance of the Chrome driver
driver = webdriver.Chrome()

# Navigate to the URL
url = 'https://www.playstation.com/en-us/support/hardware/ps3/system-software/'
driver.get(url)

try:
    # Find and click on the element with ID 'accordion-section-2'
    accordion_section_2 = driver.find_element(By.ID, 'accordion-section-2')
    accordion_section_2.click()

    # Find the download link within the specified element
    download_link = driver.find_element(By.CSS_SELECTOR, '.active-wrapper > div:nth-child(2) > div:nth-child(1) > div:nth-child(2) > div:nth-child(1) > div:nth-child(1) > div:nth-child(1) a')

    # Get the href attribute of the download link
    download_url = download_link.get_attribute('href')

    # Download the file (you can use any method you prefer for downloading)
    # For example, you can use the requests library:
    import requests
    response = requests.get(download_url)
    with open('PS3UPDAT.PUP', 'wb') as file:
        file.write(response.content)

finally:
    # Close the browser window
    driver.quit()
