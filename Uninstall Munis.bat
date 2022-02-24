@echo off
rem Uninstall Munis script by Jeff Ritchie
rem This script uninstalls the Munis Desktop client that is now not supported.

SETLOCAL ENABLEDELAYEDEXPANSION
SETLOCAL ENABLEEXTENSIONS

wmic product get name | findstr /i /C:"Munis Desktop Client 2.50"
if %errorlevel% == 0 (
	wmic product where name="Munis Desktop Client 2.50" call uninstall 
)