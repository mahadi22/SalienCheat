@ECHO OFF
:start
echo:
SET /P token=Input token file/your token string (ex: token0.txt or yourtokenstring) 
if not defined token goto errorT
:notifN
SET /P updateN=Do you want to disable update notice? (1=Yes, 0=No) 
SET /P disableC=Do you want to disable Text color ? (1=Yes, 0=No) 
if not defined updateN goto errorE
if not defined disableC goto errorE

:selectN
if "%updateN%" == "0" if "%disableC%" == "0" goto disableNothing
if "%updateN%" == "1" if "%disableC%" == "1" goto disableall
if "%updateN%" == "1" if "%disableC%" == "0" goto disableupdate
if "%updateN%" == "0" if "%disableC%" == "1" goto disablecolor
goto errorE

:errorT
echo:
echo     Token invalid or file not found
echo:
goto start

:errorE
echo:
echo     Only input number 0 or 1
echo:
goto :notifN

:disablecolor
SET DISABLE_COLORS=1 
goto runit

:disableupdate
SET IGNORE_UPDATES=1
goto runit

:disableall
echo Disable All
SET DISABLE_COLORS=1 
SET IGNORE_UPDATES=1

:runit
@title SALIEN - %token%
php "%~dp0cheat.php" %token% 
goto end

:end
echo:
echo     This will close in 3sec
TIMEOUT /T 3 /NOBREAK > nul
