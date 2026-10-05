@echo off
title 1. Rebuild APK File
color 0A
echo ==================================================
echo [1/2] Rebuilding Kingdom Guard APK using Apktool
echo ==================================================
echo.

set APKTOOL_PATH=
if exist "%~dp0apktool.jar" set APKTOOL_PATH="%~dp0apktool.jar"
if exist "%~dp0..\apktool.jar" set APKTOOL_PATH="%~dp0..\apktool.jar"

if defined APKTOOL_PATH (
    echo [INFO] Found apktool at %APKTOOL_PATH%
    echo Compiling Smali classes and packing APK (allocating 4GB RAM)...
    java -Xmx4g -jar %APKTOOL_PATH% b --no-res "%~dp0." -o "%~dp0Kingdom_Guard_Unsigned.apk"
    if not exist "%~dp0Kingdom_Guard_Unsigned.apk" (
        echo [INFO] Retrying with --use-aapt2...
        java -Xmx4g -jar %APKTOOL_PATH% b --use-aapt2 "%~dp0." -o "%~dp0Kingdom_Guard_Unsigned.apk"
    )
) else (
    echo [INFO] Trying global apktool command...
    apktool b --no-res "%~dp0." -o "%~dp0Kingdom_Guard_Unsigned.apk"
    if not exist "%~dp0Kingdom_Guard_Unsigned.apk" (
        echo [INFO] Retrying with --use-aapt2...
        apktool b --use-aapt2 "%~dp0." -o "%~dp0Kingdom_Guard_Unsigned.apk"
    )
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
