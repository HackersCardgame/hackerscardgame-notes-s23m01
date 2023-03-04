@echo off
rem MCI Biel AG  1. Oktober 1993  Daniel de Maddalena
cls

:Gruppen zurÅck setzen
if not goup == "" set group=

:START
cd\login
logmess MCI Biel AG'BAL on Server BAL Immo-Treuhand AG
ECHO.
ECHO.
ECHO.
ECHO.
login
if errorlevel 1 goto :Start
