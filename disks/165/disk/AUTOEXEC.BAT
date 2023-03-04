@echo off

cls

echo Detecting RAMDRIVE
ramdltr > nul

echo Copying files to RAMDRIVE %ramd%
copy /y *.* %ramd% > nul
%ramd%

echo Decompressing BMC firmware
mopac -d fullfw.cmt fullfw.mot

call oemdef.bat
call nulluser.bat
echo.
sel -y sel.yn -f sel.dat
echo.

echo Updating BMC Firmware
call update.bat
