[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
Expand-Archive -LiteralPath php.zip -DestinationPath .\
Copy-Item -Path .\php.ini-production -Destination .\php.ini
((Get-Content .\php.ini)) -Replace ";extension=curl", ("extension=" + (Get-Item -Path ".\") + "\ext\php_curl.dll") | Set-Content .\php.ini
((Get-Content .\php.ini)) -Replace ";date.timezone =", ("date.timezone = Asia/Jakarta") | Set-Content .\php.ini
