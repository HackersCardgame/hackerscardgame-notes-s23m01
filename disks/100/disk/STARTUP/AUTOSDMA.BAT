C:\NC\NCC /FAST
C:\DOS\SMARTDRV /E:256 256 0 /B:256
C:\SB\SB16SET /M:220 /VOC:220 /CC:220 /MIDI:220 /LINE:220 /TREBLE:0
C:\SB\SBCONFIG.EXE /S
SET BLASTER=A220 I5 D1 H5 P330 T6
SET SOUND=C:\SB
C:\SB\SB16SET /M:220 /VOC:220 /CC:220 /MIDI:220 /LINE:220 /TREBLE:0
C:\SB\SBCONFIG.EXE /S
C:\NC\NCC /FAST
C:\DOS\SMARTDRV /E:256 256 0 /B:256
SET BLASTER=A220 I7 D1 T3
@ECHO OFF
SET PCTOOLS=C:\PCTOOLS\DATA
PROMPT $p$g
PATH C:\WINDOWS;C:\DOS;C:\EXCEL;C:\PCT;C:\NC;C:\SB\PLAYCMF;C:\SB\VOXKIT;C:\SCOPY;C:\CORELDRW\DRAW;C:\SB\TB;C:\FAST;C:\PCV;
SET TEMP=C:\TMP
C:\CLUTIL\CLMODE t6=1 t8=2 t1=1 t2=0 
C:\DOS\MOUSE.COM
CLS
echo.
echo.
CHOICE PC-VIDEO KARTE INSTALLIEREN ?: /C:JN /T:N,6
FOR %%X IN (1 2) DO IF ERRORLEVEL %%X GOTO ITM_%%X
:ITM_1
LH C:\PCV\PCV.COM
NC
:ITM_2
NC
GOTO RUN
