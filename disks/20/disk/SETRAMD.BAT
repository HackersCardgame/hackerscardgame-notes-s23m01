@echo off
set RAMD=
a:\dos\findramd
if errorlevel 255 goto no_ramdrive
if errorlevel 3 set RAMD=C:
if errorlevel 4 set RAMD=D:
if errorlevel 5 set RAMD=E:
if errorlevel 6 set RAMD=F:
if errorlevel 7 set RAMD=G:
if errorlevel 8 set RAMD=H:
if errorlevel 9 set RAMD=I:
if errorlevel 10 set RAMD=J:
if errorlevel 11 set RAMD=K:
if errorlevel 12 set RAMD=L:
if errorlevel 13 set RAMD=M:
if errorlevel 14 set RAMD=N:
if errorlevel 15 set RAMD=O:
if errorlevel 16 set RAMD=P:
if errorlevel 17 set RAMD=Q:
if errorlevel 18 set RAMD=R:
if errorlevel 19 set RAMD=S:
if errorlevel 20 set RAMD=T:
if errorlevel 21 set RAMD=U:
if errorlevel 22 set RAMD=V:
if errorlevel 23 set RAMD=W:
if errorlevel 24 set RAMD=X:
if errorlevel 25 set RAMD=Y:
if errorlevel 26 set RAMD=Z:
if "%RAMD%"=="X:" goto invalid_drv
if "%RAMD%"=="M:" goto invalid_drv
goto success


:no_fdisk
echo NT Hardware Detection cannot setup your machine without an available drive C:.  
echo To reboot,
pause
reboot

:invalid_drv
echo NT Hardware Detection setup your computer as configured because the RAMDRIVE
echo it uses conflicts with a network drive letter (X: or M:).  For more 
pause
reboot

:no_ramdrive
echo There has been an error booting your computer.  The program was not able
echo to create a RAMDRIVE.  This is probably because you don't have 4 or 
echo more megabytes of extended memory.  
pause
reboot

:success
