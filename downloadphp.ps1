[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
Expand-Archive -LiteralPath php.zip -DestinationPath php\
Copy-Item -Path php\php.ini-production -Destination php\php.ini
((Get-Content php\php.ini)) -Replace ";extension=curl", ("extension=" + (Get-Item -Path ".\php") + "\ext\php_curl.dll") | Set-Content php\php.ini
((Get-Content php\php.ini)) -Replace ";date.timezone =", ("date.timezone = Asia/Jakarta") | Set-Content php\php.ini
