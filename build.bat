@echo off
title Building Kingdom Guard APK
echo ==================================================
echo Building Kingdom Guard APK...
echo ==================================================

apktool b . -o Kingdom_Guard_unsigned.apk

if not exist Kingdom_Guard_unsigned.apk (
    echo.
    echo [ERROR] Build failed! Check if apktool is installed and added to PATH.
    pause
    exit /b 1
)

echo.
echo ==================================================
echo [SUCCESS] APK compiled: Kingdom_Guard_unsigned.apk
echo ==================================================
pause
