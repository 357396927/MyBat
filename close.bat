@echo off
if "%1"=="xl" goto xl
if "%1"=="ad" goto ad
exit

:ad
taskkill /f /im ADSafe.exe
taskkill /f /im ADSafeSvc.exe
goto end

:xl
taskkill /f /im Thunder.exe
goto end

:end
exit