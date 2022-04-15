param ( [string]$KeyboardFile )
$WshShell = New-Object -comObject WScript.Shell
$Shortcut = $WshShell.CreateShortcut("$PSScriptRoot\KMonad.lnk")
$Shortcut.TargetPath = "$env:windir\System32\WindowsPowerShell\v1.0\powershell.exe"
$KeyboardFile = Convert-Path "$KeyboardFile"
$shortcut.Arguments = "-Command ""& Start-Process -WindowStyle hidden -FilePath $env:APPDATA\local\bin\kmonad.exe $KeyboardFile"""
$Shortcut.Save()
