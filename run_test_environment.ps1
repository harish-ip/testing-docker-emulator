# Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iwr https://chocolatey.org/install.ps1 -UseBasicParsing | iex
# choco install docker-desktop -y
# choco upgrade android-sdk -y 

# docker-compose down; docker-compose up -d --build
# ==========================================================================================================================
Install-Package nodejs
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iwr https://chocolatey.org/install.ps1 -UseBasicParsing | iex
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iwr https://chocolatey.org/install.ps1 -UseBasicParsing | iex
choco install docker-desktop -y
choco upgrade android-sdk -y

Set-Variable -Name ANDROID_HOME -Value "C:\Android\android-sdk"
Set-Variable -Name ANDROID_SDK_ROOT -Value "C:\Android\android-sdk"
 
Get-Variable ANDROID_HOME -valueOnly
Get-Variable ANDROID_SDK_ROOT -valueOnly

Set-Location C:\Android\android-sdk\tools\bin
Set-Location C:\Android\android-sdk\tools\bin

docker-compose up -d --build

sdkmanager "–sdk_root= ANDROID_SDK_ROOT" “platform-tools” “platforms;android–29” “build-tools;29.0.3”
sdkmanager build-tools;28.0.1
sdkmanager "platform-tools" "platforms;android-28"
sdkmanager "build-tools;30.0.3"
sdkmanager --list
sdkmanager platform-tools 
sdkmanager platforms
sdkmanager system-images
sdkmanager emulator
