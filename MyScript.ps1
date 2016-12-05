Write-Output 'Powershell file has run!'

Write-Output 'Installing Chocolatey'
iwr https://chocolatey.org/install.ps1 -UseBasicParsing | iex

Write-Output 'Installing Atom'
choco install atom --version 1.0.7 -y

Write-Output 'Installing VLC'
choco install vlc --version 2.2.4 -y

Write-Output 'Installing VLC'
choco install cmder --version 1.3.0 -y

Write-Host "Press any key to continue ..."

$x = $host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown")
