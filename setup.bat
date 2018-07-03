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

echo Installing are complete, run simplerun.bat to start the script
pause
