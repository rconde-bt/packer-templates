Write-Host "Installing .NET Framework 3.5"
Install-WindowsFeature Net-Framework-Core

Write-Host "disabling LUA"
Set-ItemProperty -Path HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System -Name EnableLUA  -Value 0

Write-Host "Installing chocolatey"
iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
