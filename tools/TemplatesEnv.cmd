@echo off

if defined ProgramFiles(x86) (
    set "TemplatesProgramFiles=%ProgramFiles(x86)%"
) else (
    set "TemplatesProgramFiles=%ProgramFiles%"
)

if exist "%TemplatesProgramFiles%\Microsoft Visual Studio\Preview\MSBuild\15.0\Bin\MSBuild.exe" (
    set "TemplatesVSVersion=15.0"
    set TemplatesMSBuildPath="%TemplatesProgramFiles%\Microsoft Visual Studio\Preview\MSBuild\15.0\Bin"
) else (
    set "TemplatesVSVersion=14.0"
    set TemplatesMSBuildPath="%TemplatesProgramFiles%\MSBuild\14.0\Bin"
)

set "TemplatesRoot=%~dp0"
set "TemplatesRoot=%TemplatesRoot:~0,-7%"
set "TemplatesBin=%TemplatesRoot%\bin\"
set "TemplatesIntermediate=%TemplatesRoot%\obj\"
set "TemplatesReferences=%TemplatesRoot%\references\"
set "TemplatesSource=%TemplatesRoot%\src\"
set "TemplatesTools=%TemplatesRoot%\tools\"

set "PATH=%PATH%;%TemplatesMSBuildPath%"
set "PATH=%PATH%;%TemplatesTools%"