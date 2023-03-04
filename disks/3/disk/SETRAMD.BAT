@echo off
set RAMD=
set CDROM=

echo.
echo Laufwerk fÅr Diagnoseprogramme wird gesucht...
echo.

a:\findramd

if errorlevel 255 goto no_ramdrive

rem if not errorlevel 4 goto no_ramdrive
rem by hasi: muss das sein? h‰?

goto do_shift

:loop
if errorlevel %1 goto no_shift

:do_shift
set cdrom=%2
shift
shift
if not %1*==* goto loop
goto no_ramdrive

:no_shift
set ramd=%2

if "%RAMD%"=="C" goto c_drive

goto success

:c_drive

goto success
rem by hasi: Verwirrend, goto eingef¸gt

:no_ramdrive
echo Beim Starten des Computers ist ein Fehler aufgetreten. Mit dieser 
echo Startdiskette konnte kein RAM-Laufwerk erstellt werden, da nicht
echo genÅgend Erweiterungsspeicher (mind. 2 MB) verfÅgbar ist.  

:success
