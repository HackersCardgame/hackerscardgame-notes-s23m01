mopac -d fullfw.cmt fullfw.mot
if errorlevel 1 goto FailMopac

echo Updating BMC Firmware
call oemdef.bat
call nulluser.bat
sel -y sel.yn -f sel.dat < y.dat
call update.bat -f
goto end

:FailMopac
echo Unpacking failure encountered

:end
