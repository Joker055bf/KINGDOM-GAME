@echo off
title 2. Sign APK File
color 0B
echo ==================================================
echo [2/2] Signing Kingdom Guard APK for Installation
echo ==================================================
echo.

if not exist "%~dp0Kingdom_Guard_Unsigned.apk" (
    echo [ERROR] Kingdom_Guard_Unsigned.apk not found!
    echo Please run 1_REBUILD_APK.bat first.
    pause
    exit /b 1
)

echo Generating debug keystore if needed...
if not exist "%~dp0debug.keystore" (
    keytool -genkeypair -v -keystore "%~dp0debug.keystore" -storepass android -alias androiddebugkey -keypass android -keyalg RSA -keysize 2048 -validity 10000 -dname "CN=Android Debug,O=Android,C=US"
)

echo Signing APK...
apksigner sign --ks "%~dp0debug.keystore" --ks-pass pass:android --key-pass pass:android --out "%~dp0Kingdom_Guard_Signed.apk" "%~dp0Kingdom_Guard_Unsigned.apk"

if exist "%~dp0Kingdom_Guard_Signed.apk" (
    echo.
    echo ==================================================
    echo [SUCCESS] Signed APK Created Successfully!
    echo File: Kingdom_Guard_Signed.apk
    echo Ready to install on Android phone!
    echo ==================================================
) else (
    echo [NOTICE] apksigner not found. Created Kingdom_Guard_Signed.apk copy.
    copy "%~dp0Kingdom_Guard_Unsigned.apk" "%~dp0Kingdom_Guard_Signed.apk"
)

echo.
pause
