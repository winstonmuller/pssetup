$chocolateyAppList = "dotnetcore-sdk,dotnetcore-windowshosting,vscode,git,gitextensions"

$apps = $chocolateyAppList -split ',' | foreach { "$($_.Trim())" }

foreach ($app in $apps)
{
    Write-Host "Installing $app"
    & choco install $app /y
}