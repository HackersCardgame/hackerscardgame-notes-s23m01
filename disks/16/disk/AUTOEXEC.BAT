@ECHO OFF
set EXPAND=YES
SET DIRCMD=/O:N
cls
set temp=c:\
set tmp=c:\
path=a:\

IF "%config%"=="NOCD" GOTO QUIT
LH MSCDEX.EXE /D:oemcd001 /L:D

echo.
IF "%config%"=="SETUP_CD" goto AUTOSETUP
GOTO QUIT

:AUTOSETUP
set CDROM=FOO23
FINDCD.EXE
if "%CDROM%"=="FOO23" goto NOCDROM
path=a:\;%CDROM%\
%CDROM%
cd \WIN98
echo.
OEMSETUP.EXE
goto QUIT

:NOCDROM
echo.
echo Die Windows 98 Installationsdateien wurden nicht gefunden.
echo.

:QUIT
