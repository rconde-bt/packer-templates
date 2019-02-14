Write-Host "Installing .NET Framework 3.5"
Install-WindowsFeature Net-Framework-Core

Write-Host "disabling LUA"
Set-ItemProperty -Path HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System -Name EnableLUA  -Value 0
