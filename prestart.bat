# This script will automatically install all prerequisites required for running vagrant
# It should be executed with elevated privileges

# Install chocolatey
@powershell -NoProfile -ExecutionPolicy Bypass -Command "iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"

# Install all dependencies using chocolatey
choco install virtualbox -y
choco install virtualbox.extensionpack -y
choco install vagrant -y
choco install git -y
