# Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iwr https://chocolatey.org/install.ps1 -UseBasicParsing | iex
#choco install android-sdk -y
# npm uninstall -g appium; npm install -g appium
# appium
choco upgrade android-sdk -y
Set-Location C:\Android\android-sdk\tools\bin
# C:\Android\android-sdk\tools\bin\sdkmanager emulator patcher platforms system-images build-tools (not worked)
C:\Android\android-sdk\tools\bin\sdkmanager emulator
# C:\Android\android-sdk\tools\bin\sdkmanager system-images (not worked)
# C:\Android\android-sdk\tools\bin\sdkmanager build-tools (not worked)
C:\Android\android-sdk\tools\bin\sdkmanager --list
C:\Android\android-sdk\tools\bin\sdkmanager "platforms;android-27"
C:\Android\android-sdk\tools\bin\sdkmanager "build-tools;27.0.3" 
C:\Android\android-sdk\tools\bin\sdkmanager "system-images;android-27;google_apis;x86"
C:\Android\android-sdk\tools\bin\avdmanager create avd -n test-powershell -k "system-images;android-27;google_apis;x86" -b x86 -c 100M -d 7 -f
# C:\Android\android-sdk\tools\emulator @test-powershell (not worked)
C:\Android\android-sdk\emulator\emulator -avd test-powershell
Set-Location E:\test-project-docker_20201217
adb -s emulator-5554 install -r 'Sprint_5_demo.apk'
# npm uninstall -g appium; npm install -g appium
# appium



