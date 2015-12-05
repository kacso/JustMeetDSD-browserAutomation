@echo off
chcp 1250
echo IMPORTANT: Remove lock screen protection on Android phone or else Appium wont be able to unlock screen and start application!
set SAVESTAMP=%DATE:/=-%@%TIME::=-%
set SAVESTAMP=%SAVESTAMP: =%
set SAVESTAMP=%SAVESTAMP:,=-%
mkdir reports\all\%SAVESTAMP%
echo All tests >>  reports\all\%SAVESTAMP%\log.txt
for %%f in (.\features\*.feature) do (
	echo %%~nxf
	echo !time!: %%~nxf started >>  reports\all\%SAVESTAMP%\log.txt
	call cucumber.bat .\features\%%~nxf -f html -o reports\all\%SAVESTAMP%\%%~nf.html
	echo !time!: %%~nxf ended >>  reports\all\%SAVESTAMP%\log.txt
)
exit