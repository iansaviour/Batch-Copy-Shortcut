@echo off

SETLOCAL ENABLEEXTENSIONS

:: %~dp0 = current dir

pushd %~dp0

SET targetdir=C:\Program Files\TargetFolder

SET targetexe=%targetdir%\your_app.exe

SET targetico=%targetdir%\your_icon.ico

SET shortcutname=Shortcut Name Here

XCOPY "%~dp0AppFolder" "%targetdir%"

%lokaldir%Lib.exe "C:\Users\%USERNAME%\Desktop\%shortcutname%.lnk" "%targetexe%" "%targetico%"

pause