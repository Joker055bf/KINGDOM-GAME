@echo off
title 1. Rebuild APK File
color 0A
echo ==================================================
echo [1/2] Rebuilding Kingdom Guard APK using Apktool
echo ==================================================
echo.

if exist "%~dp0apktool.jar" (
    java -jar "%~dp0apktool.jar" b --use-aapt2 "%~dp0." -o "%~dp0Kingdom_Guard_Unsigned.apk"
) else if exist "%~dp0..\apktool.jar" (
    java -jar "%~dp0..\apktool.jar" b --use-aapt2 "%~dp0." -o "%~dp0Kingdom_Guard_Unsigned.apk"
) else (
    echo [INFO] apktool.jar not found in project directory.
    echo Trying global apktool command...
    apktool b --use-aapt2 "%~dp0." -o "%~dp0Kingdom_Guard_Unsigned.apk"
)

if exist "%~dp0Kingdom_Guard_Unsigned.apk" (
    echo.
    echo ==================================================
    echo [SUCCESS] APK compiled successfully!
    echo Output: Kingdom_Guard_Unsigned.apk
    echo ==================================================
) else (
    echo.
    echo [ERROR] Rebuilding failed! 
    echo Please make sure Java is installed and apktool.jar is available.
)

echo.
pause
