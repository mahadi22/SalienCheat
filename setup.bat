@echo off
setlocal enabledelayedexpansion

if not exist php.exe (
	echo PHP wasn't detected; we'll extract it for you.
	PowerShell -ExecutionPolicy Unrestricted -File "downloadphp.ps1"
)

if not exist token0.txt (
	set /p token=Please get a token from here: https://steamcommunity.com/saliengame/gettoken and enter it: 
	echo !token! > token0.txt
)

echo.
if exist php.exe goto success
if not exist php.exe goto failed
:success
echo Installing are complete, run simplerun.bat next time to start the script.
echo We will run it for you for this first time.
echo.
.\simplerun.bat
exit
:failed
echo Extract failed, please extract php.zip manually to this folder.
echo.
echo     This will close in 10sec
TIMEOUT /T 10 /NOBREAK > nul
exit
