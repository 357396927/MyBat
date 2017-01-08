@echo off

if "%1" == "" (
set v=
) else (
set v=%1
)

if "%2" == "" (
set rc=
) else (
set rc=%2
)

for /f "tokens=1,2,3 delims=-" %%i in ("%cd%") do (
set f1=%%i&set f2=%%j&set f3=%%k
)

cd ..
for /d %%i in (*%f2%) do (
set f4=%%i
)

if "%rc%" == "" goto l2 else goto l1
goto fail

:l1
echo "mydiff %f4% %f4%-%f3% zfbug%v%-%f2%-ljd-%rc%.diff"
goto end

:l2
echo "mydiff %f4% %f4%-%f3% zfbug%v%-%f2%-ljd.diff"
goto end

:fail
echo "Éú³É²¹¶¡Ê§°Ü"
pause
goto end

:end
exit