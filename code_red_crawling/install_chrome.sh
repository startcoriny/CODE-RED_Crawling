# Chrome 설치
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" | sudo tee /etc/apt/sources.list.d/google-chrome.list
sudo apt-get update
sudo apt-get install google-chrome-stable -y

# Chrome WebDriver 설치
CHROME_VERSION=$(google-chrome --version | grep -oP '(?<=Google Chrome )[^ ]+')
CHROME_DRIVER_VERSION=$(curl -s "https://chromedriver.storage.googleapis.com/LATEST_RELEASE_$CHROME_VERSION")
wget -q "https://chromedriver.storage.googleapis.com/$CHROME_DRIVER_VERSION/chromedriver_linux64.zip" -O chromedriver.zip
sudo unzip -o chromedriver.zip -d /usr/local/bin/
sudo chmod +x /usr/local/bin/chromedriver
rm chromedriver.zip