@ECHO OFF
:start
echo:
SET /P token=Please input your token file with extension (ex: token0.txt) 
@title SALIEN - %token%
if not defined token goto error
goto runit

:error
echo:
echo     Token invalid or file not found
echo:
goto start

:runit
php "%~dp0cheat.php" %token% 
goto end

:end
echo:
echo     This will close in 3sec
TIMEOUT /T 3 /NOBREAK > nul