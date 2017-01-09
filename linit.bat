@echo off
mkdir F:\MyBat
copy %cd%\*.bat F:\MyBat\
wmic ENVIRONMENT where "name='path' and username='<system>'" set VariableValue="%path%;F:\MyBat\"
exit