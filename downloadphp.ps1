[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
if($PSVersiontable.PSVersion.Major -lt 5)
{
    if((Test-Path php.exe -pathtype leaf) -eq $False)
    {
        Add-Type -AssemblyName System.IO.Compression.FileSystem
        [IO.Compression.ZipFile]::ExtractToDirectory('php.zip', '.\')
    }
}
else {
Expand-Archive -LiteralPath php.zip -DestinationPath .\
}
Copy-Item -Path .\php.ini-production -Destination .\php.ini
((Get-Content .\php.ini)) -Replace ";extension=curl", ("extension=" + (Get-Item -Path ".\") + "\ext\php_curl.dll") | Set-Content .\php.ini
((Get-Content .\php.ini)) -Replace ";date.timezone =", ("date.timezone = Asia/Jakarta") | Set-Content .\php.ini
