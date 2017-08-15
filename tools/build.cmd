@echo off

call %~dp0\EnsureTemplatesEnv.cmd

dotnet msbuild %TemplatesRoot%\template_feed\Template.proj /t:Build;Test
if errorlevel 0 exit /b 0

:ERROR
endlocal
exit /b 1
