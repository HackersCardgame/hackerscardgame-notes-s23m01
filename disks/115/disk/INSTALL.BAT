cls
@echo off
if "%1" == "" goto Fehler
if "%2" == "" goto Fehler
md %1\%2
if not errorlevel 0 goto Fehler
echo Das Programm wird nun installiert...
copy *.* %1\%2 >nul
%1
if not errorlevel 0 goto Fehler
cd \%2
if not errorlevel 0 goto Fehler
ploom >nul
del ploom.exe
echo Zum Start des Spiels bitte LOOM eingeben
goto Ende
:Fehler
echo Fehlerhafte Eingabe
echo Die Eingabe muá dem folgenden Beispiel entsprechen:
echo INSTALL C: PFADNAME oder
echo INSTALL D: PFAD\PFAD2
:Ende 
