@echo off

flash -d %1 fullfw.mot

if errorlevel 114 goto Fail_114
if errorlevel 113 goto Fail_113
if errorlevel 112 goto Fail_112
if errorlevel 111 goto Fail_111
if errorlevel 110 goto Fail_110
if errorlevel 109 goto Fail_109
if errorlevel 108 goto Fail_108
if errorlevel 107 goto Fail_107
if errorlevel 106 goto Fail_106
if errorlevel 105 goto Fail_105
if errorlevel 104 goto Fail_104
if errorlevel 103 goto Fail_103
if errorlevel 102 goto Fail_102
if errorlevel 101 goto Fail_101
if errorlevel 100 goto Fail_100

if errorlevel 81 goto Fail_81
if errorlevel 80 goto Fail_80

if errorlevel 79 goto Fail_79
if errorlevel 78 goto Fail_78
if errorlevel 77 goto Fail_77
if errorlevel 76 goto Fail_76
if errorlevel 75 goto Fail_75
if errorlevel 74 goto Fail_74
if errorlevel 73 goto Fail_73
if errorlevel 72 goto Fail_72
if errorlevel 71 goto Fail_71
if errorlevel 70 goto Fail_70

if errorlevel 69 goto Fail_69
if errorlevel 68 goto Fail_68
if errorlevel 67 goto Fail_67
if errorlevel 66 goto Fail_66
if errorlevel 65 goto Fail_65
if errorlevel 64 goto Fail_64
if errorlevel 63 goto Fail_63
if errorlevel 62 goto Fail_62
if errorlevel 61 goto Fail_61
if errorlevel 60 goto Fail_60

if errorlevel 36 goto Fail_36
if errorlevel 35 goto Fail_35
if errorlevel 34 goto Fail_34
if errorlevel 33 goto Fail_33
if errorlevel 32 goto Fail_32
if errorlevel 31 goto Fail_31
if errorlevel 30 goto Fail_30

if errorlevel 24 goto Fail_24
if errorlevel 23 goto Fail_23
if errorlevel 22 goto Fail_22
if errorlevel 21 goto Fail_21

if errorlevel 11 goto Fail_11
if errorlevel 10 goto Fail_10

if errorlevel 4 goto Fail_4
if errorlevel 3 goto Fail_3
if errorlevel 2 goto Fail_2
if errorlevel 1 goto Fail_1


echo BMC Firmware and SDRs updated successfully!!!
echo Please remove the disk from the drive and reboot the system
goto end

:Fail_114 
goto Fail_Generic
:Fail_113 
goto Fail_Generic
:Fail_112 
goto Fail_Generic
:Fail_111 
goto Fail_Generic
:Fail_110 
goto Fail_Generic
:Fail_119 
goto Fail_Generic
:Fail_108 
goto Fail_Generic
:Fail_107 
goto Fail_Generic
:Fail_106 
goto Fail_Generic
:Fail_105 
goto Fail_Generic
:Fail_104 
goto Fail_Generic
:Fail_103 
goto Fail_Generic
:Fail_102 
goto Fail_Generic
:Fail_101 
goto Fail_Generic
:Fail_100 
goto Fail_Generic

:Fail_81
goto Fail_Generic
:Fail_80
goto Fail_Generic

:Fail_79
echo Firmware update aborted by user.
echo Current BMC firmware revision is the same or newer than that on the disk.
echo BMC firmware was not updated.
goto end
:Fail_78
:Fail_77 
echo A product or manufacturer ID mismatch has occurred.
echo The image is not intended for this server.
echo BMC firmware was not updated.
goto end
:Fail_76 
goto Fail_Generic
:Fail_75 
goto Fail_Generic
:Fail_74 
goto Fail_Generic
:Fail_73 
goto Fail_Generic
:Fail_72 
goto Fail_Generic
:Fail_71 
goto Fail_Generic
:Fail_70 
goto Fail_Generic

:Fail_69 
goto Fail_Generic
:Fail_68 
goto Fail_Generic
:Fail_67 
goto Fail_Generic
:Fail_66
goto Fail_Generic
:Fail_65
goto Fail_Generic
:Fail_64
goto Fail_Generic
:Fail_63
goto Fail_Generic
:Fail_62
goto Fail_Generic
:Fail_61
goto Fail_Generic
:Fail_60
goto Fail_Generic

:Fail_36 
goto Fail_Generic
:Fail_35 
goto Fail_Generic
:Fail_34 
goto Fail_Generic
:Fail_33 
goto Fail_Generic
:Fail_32 
goto Fail_Generic
:Fail_31 
goto Fail_Generic
:Fail_30 
goto Fail_Generic

:Fail_24 
goto Fail_Generic
:Fail_23 
goto Fail_Generic
:Fail_22 
goto Fail_Generic
:Fail_21 
goto Fail_Generic

:Fail_11
goto Fail_Generic
:Fail_10
goto Fail_Generic

:Fail_4
goto Fail_Generic
:Fail_3
goto Fail_Generic
:Fail_2
goto Fail_Generic
:Fail_1
goto Fail_Generic

:Fail_Generic
echo A failure has occured while updating BMC Firmware and SDRs

:end
