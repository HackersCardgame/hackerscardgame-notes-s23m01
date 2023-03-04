@echo off
cls
if "%1" == "" goto Bemerkung
if not exist install.bat goto Bemerkung
echo off
echo 
echo                ----------------------------------------------
echo                           FESTPLATTEN-INSTALLATION
echo                                     fr
echo                          P R O G R A M M  -  L O C K
echo                ----------------------------------------------
echo.
echo                     Direct by Philippe " SHRIKE " Kurz !
echo.
pause
MD %1\PRGLOCK
if errorlevel 1 goto Fehler
copy *.* %1\PRGLOCK >nul
%1
cd \PRGLOCK
cls
echo 
echo.
echo                               ... We do it ! 
echo.
echo               -------------------------------------------------
echo               Die Installation wurde erfolgreich abgeschlossen.
echo                 Um PROGRAMM-LOCK zu starten, geben Sie bitte
echo                        PRGLOCK   oder   START   ein.
echo               -------------------------------------------------
goto Ende
:Fehler
echo off
echo.
echo              --------------------------------------------------
echo 
echo              Es ist unm”glich, den folgenden Pfad zu erstellen:
echo                                  %1\PRGLOCK
echo                  Die Installation wird hiermit abgebrochen !
echo 
echo              --------------------------------------------------
goto Ende 
:Bemerkung 
echo off 
echo.
echo        ---------------------------------------------------------------
echo 
echo        Um PROGRAMM-LOCK auf der Harddisk C: zu installieren, legen Sie
echo        bitte die Progammdiskette in das Laufwerk A und geben Sie dann
echo        folgenden Befehl ein:           INSTALL C:
echo        Falls Sie dieses Programm auf einem anderen Festplattenlaufwerk
echo        installieren wollen, so geben Sie einfach dessen Namen ein.
echo 
echo        ---------------------------------------------------------------
:Ende 
