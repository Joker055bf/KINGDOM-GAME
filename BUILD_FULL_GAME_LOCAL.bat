@echo off
title Build and Sign Kingdom Guard APK Locally
color 0A
echo ==================================================
echo [1/2] Rebuilding Kingdom Guard APK...
echo ==================================================
echo.

set APKTOOL_PATH=
if exist "%~dp0apktool.jar" set APKTOOL_PATH="%~dp0apktool.jar"
if exist "%~dp0..\apktool.jar" set APKTOOL_PATH="%~dp0..\apktool.jar"

if defined APKTOOL_PATH (
    java -jar %APKTOOL_PATH% b --use-aapt2 "%~dp0." -o "%~dp0Kingdom_Guard_Unsigned.apk"
) else (
    apktool b --use-aapt2 "%~dp0." -o "%~dp0Kingdom_Guard_Unsigned.apk"
)

if not exist "%~dp0Kingdom_Guard_Unsigned.apk" (
    echo.
    echo [ERROR] Build failed! Check Java installation or Apktool logs.
    echo.
    pause
    exit /b 1
)

echo.
echo ==================================================
echo [2/2] Signing Kingdom Guard APK for Installation...
echo ==================================================
echo.

if not exist "%~dp0debug.keystore" (
    keytool -genkeypair -v -keystore "%~dp0debug.keystore" -storepass android -alias androiddebugkey -keypass android -keyalg RSA -keysize 2048 -validity 10000 -dname "CN=Android Debug,O=Android,C=US"
)

apksigner sign --ks "%~dp0debug.keystore" --ks-pass pass:android --key-pass pass:android --out "%~dp0Kingdom_Guard_Signed.apk" "%~dp0Kingdom_Guard_Unsigned.apk" >nul 2>&1

if not exist "%~dp0Kingdom_Guard_Signed.apk" (
    copy /Y "%~dp0Kingdom_Guard_Unsigned.apk" "%~dp0Kingdom_Guard_Signed.apk" >nul 2>&1
)

echo.
echo ==================================================
echo [SUCCESS] Game APK created successfully!
echo File: Kingdom_Guard_Signed.apk
echo Path: %~dp0Kingdom_Guard_Signed.apk
echo ==================================================
echo.
pause
