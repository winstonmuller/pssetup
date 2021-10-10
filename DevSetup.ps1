$chocolateyAppList = "dotnetcore-sdk,dotnetcore-windowshosting,vscode,git,gitextensions,nodejs"

$apps = $chocolateyAppList -split ',' | ForEach-Object { "$($_.Trim())" }

foreach ($app in $apps)
{
    Write-Host "Installing $app"
    & choco install $app /y
}