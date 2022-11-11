@if (@CodeSection == @Batch) @then

@echo off

set SendKeys=CScript //nologo //E:JScript "%~F0"
START CHROME --restore-last-session --start-fullscreen "https://accounts.google.com/v3/signin/identifier?dsh=S1460456777%3A1667698075109603&flowName=GlifWebSignIn&flowEntry=ServiceLogin&ifkv=ARgdvAtkEiTGLH4nR-ZmPvbvY8ZIdaEXH-9K3qqHU6IKS5di966VwZ-XAqjnJTVb4AzveoIZAuHh"

ping -n 10 127.0.0.1 >NUL
%SendKeys% "teamcity.matrix@gmail.com"
%SendKeys% "{ENTER}"
ping -n 10 127.0.0.1 >NUL
%SendKeys% "Matrix2022xX#"
%SendKeys% "{ENTER}"
ping -n 10 127.0.0.1 >NUL
FOR /L %%G IN (1,1,7) DO %SendKeys% "{TAB}"
%SendKeys% "{ENTER}"
ping -n 10 127.0.0.1 >NUL
FOR /L %%G IN (1,1,11) DO %SendKeys% "{TAB}" %SendKeys% "{TAB}"
%SendKeys% "{ENTER}"
ping -n 10 127.0.0.1 >NUL
FOR /L %%G IN (1,1,4) DO %SendKeys% "{TAB}" %SendKeys% "{TAB}"
%SendKeys% "{ENTER}"

:timeout /t 7
::Get-Process chrome | ForEach-Object { $_.CloseMainWindow() | Out-Null}
taskkill /IM chrome.exe /F


goto :EOF

@end
// JScript section

var WshShell = WScript.CreateObject("WScript.Shell");
WshShell.SendKeys(WScript.Arguments(0));