@echo off
prompt $p$g
echo on
cls
@echo off
call setramd.bat
%RAMD%
path=%RAMD%\;a:\dos
rem if not exist %RAMD%\command.com copy A:\command.com %RAMD%\ >nul
rem set comspec=%RAMD%\command.com
echo Detecting the Ram Drive Letter...
echo:
echo Copying ZIPFILE.EXE to your Ram Drive, this will 
echo take approximately 45 seconds please standby...
copy a:zipfile.exe %RAMD%\ >nul
echo:
echo Extracting ZIPFILE.EXE to your Ram Drive and starting NTHQ...
%RAMD%\zipfile.exe >nul
CLS
echo Detecting BIOS Boot Sector Virus Protection...
echo:
DOSDET.EXE
echo:
%RAMD%\dosx /s=ss
copy nthq.txt a:\
@echo off
cls
Echo Detection completed.
Echo See the log file NTHQ.TXT for your detected hardware and settings.
Echo See README.TXT for details on using the log file for troubleshooting.
echo:
