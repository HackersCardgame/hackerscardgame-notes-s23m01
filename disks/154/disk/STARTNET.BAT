@echo off
rem C:\NET\bin\yesno.exe "Do you want to load the remote client software? (y/n) "
rem if errorlevel 1 goto LoadNet
goto LoadRem

:LoadNet

goto Exit

:LoadRem

SET NWLANGUAGE=english
LH C:\NWCLIENT\LSL.COM /C=C:\NWCLIENT\net.cfg

lh C:\NWCLIENT\nesl.com

lh C:\NWCLIENT\ncomx.com

lh C:\NWCLIENT\nwremote.com

REM **DO NOT DELETE**

REM Load IPX
REM REM @ LH C:\NWCLIENT\IPXODI.COM
REM @ LH C:\NWCLIENT\IPXODI.COM
@ lh C:\NWCLIENT\ipxodi.com




REM Load TCPIP
REM REM @ C:\NET\BIN\TCPIP.EXE
REM @ C:\NET\BIN\TCPIP.EXE
@ C:\NET\bin\tcpip.exe




 C:\NWCLIENT\NTR2000.COM
 rem LH C:\NWCLIENT\IPXODI.COM
 LH C:\NWCLIENT\VLM.EXE /C=C:\NWCLIENT\net.cfg

@ SET NWLANGUAGE=ENGLISH

:Exit

echo on
