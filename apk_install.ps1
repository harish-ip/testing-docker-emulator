Set-Location E:\test-project-docker_20201217
docker-compose down; docker-compose up -d --build
adb -s emulator-5554 install -r 'Sprint_5_demo.apk'
npm uninstall -g appium; npm install -g appium
appium  