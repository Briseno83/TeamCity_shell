@if (@CodeSection == @Batch) @then

@echo off

rem Use %SendKeys% to send keys to the keyboard buffer
set SendKeys=CScript //nologo //E:JScript "%~F0"
START CHROME "https://accounts.google.com/v3/signin/identifier?dsh=S1460456777%3A1667698075109603&flowName=GlifWebSignIn&flowEntry=ServiceLogin&ifkv=ARgdvAtkEiTGLH4nR-ZmPvbvY8ZIdaEXH-9K3qqHU6IKS5di966VwZ-XAqjnJTVb4AzveoIZAuHh"

timeout /t 5
%SendKeys% "teamcity.matrix@gmail.com"
%SendKeys% "{ENTER}"
timeout /t 4
%SendKeys% "Matrix2022xX#"
%SendKeys% "{ENTER}"
timeout /t 4
FOR /L %%G IN (1,1,7) DO %SendKeys% "{TAB}"
%SendKeys% "{ENTER}"
timeout /t 3
FOR /L %%G IN (1,1,11) DO %SendKeys% "{TAB}" %SendKeys% "{TAB}"
%SendKeys% "{ENTER}"
timeout /t 8
FOR /L %%G IN (1,1,4) DO %SendKeys% "{TAB}" %SendKeys% "{TAB}"
%SendKeys% "{ENTER}"

timeout /t 7
TASKKILL /IM chrome.exe /F

goto :EOF

@end
// JScript section

var WshShell = WScript.CreateObject("WScript.Shell");
WshShell.SendKeys(WScript.Arguments(0));