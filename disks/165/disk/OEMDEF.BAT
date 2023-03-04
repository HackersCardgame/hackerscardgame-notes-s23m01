@echo off
REM Update defaults by issuing commands before flashing.
REM instead of having the user issue reset to defaults
REM after flashing.

REM Format is:  IPMICMD rssa netfn lun cmd data...
REM Exmaple of GET DEVICE ID...
REM IPMICMD 20 6 0 1

REM Format is:  IPMITOOL rssa netfn*4 cmd data...
REM Exmaple of GET DEVICE ID...
REM IPMITOOL 20 18 1

REM Format is:  BMC_CFG -F file.CFG -C

REM Suppress completion code display with "> NUL"

BMC_CFG -f oemdef.cfg -c -noreport > NUL

