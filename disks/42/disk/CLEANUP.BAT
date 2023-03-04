@echo off
:COMMON
IF "%winbootdir%"=="" SET winbootdir=C:\WINDOWS
IF "%winbootdir%"=="" GOTO EXIT
del %winbootdir%\inf\oem*.inf
del %winbootdir%\inf\other\TERRA*.inf
del %winbootdir%\inf\drv*.bin
:IIC
del %winbootdir%\system\EWSCTRL.VXD
:9407
del %winbootdir%\system\DREAM95.VXD
del %winbootdir%\system\DREAM95.DRV
del %winbootdir%\system\EWSAUDIO.VXD
del %winbootdir%\system\EWSAUDIO.DRV
del %winbootdir%\system\DLL9407.DLL
del %winbootdir%\EWS64_OS.BIN
:4236
del %winbootdir%\system\CSPCPLE.DLL
del %winbootdir%\system\CS32BA11.DRV
del %winbootdir%\system\CSFM.DRV
del %winbootdir%\system\CSMIDI.DRV
del %winbootdir%\system\CS4232LD.VXD
del %winbootdir%\system\CWAUDIO.VXD
del %winbootdir%\system\CSMIDI.VXD
del %winbootdir%\system\MSGLOOP.EXE
del %winbootdir%\system\VWSTREAM.VXD
del %winbootdir%\system\WSTREAM.DLL
del %winbootdir%\system\CS32MIX.EXE
del %winbootdir%\CS4232.INI
del %winbootdir%\CS4232C.EXE
del %winbootdir%\CW3DSND.EXE
del %winbootdir%\CWAUDIO.BIN
:EXIT
