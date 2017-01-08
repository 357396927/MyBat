@echo off
if "%1"=="bat" goto bat
if "%1"=="sub" goto sublime
if "%1"=="xl" goto xl
if "%1"=="vm" goto vm
if "%1"=="ad" goto ad
if "%1"=="cmder" goto cmder
exit

:bat
start "" "F:\Bat"
goto end

:sublime
start "" "F:\Code\Lua\SublimeTextLua\sublime_text.exe"
goto end

:vm
start "" "E:\Program Files\VMware\VMware Workstation\vmware.exe"
goto end

:ad
start "" "E:\Program Files\ADSafe\ADSafe.exe"
goto end

:xl
start "" "E:\Program Files\Thunder Network\Thunder\Program\Thunder.exe"
goto end

:cmder
start "" "H:\Soft\cmd\cmder_mini\Cmder.exe"
goto end

:end
exit