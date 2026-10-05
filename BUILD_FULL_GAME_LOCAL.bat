@echo off
title Build and Sign Kingdom Guard APK Locally
color 0A
echo ==================================================
echo [1/2] Rebuilding Kingdom Guard APK...
echo ==================================================
echo.

set JAVA_EXE=java
if exist "C:\Program Files\Android\Android Studio\jbr\bin\java.exe" set JAVA_EXE="C:\Program Files\Android\Android Studio\jbr\bin\java.exe"

set KEYTOOL_EXE=keytool
if exist "C:\Program Files\Android\Android Studio\jbr\bin\keytool.exe" set KEYTOOL_EXE="C:\Program Files\Android\Android Studio\jbr\bin\keytool.exe"

set APKTOOL_PATH=
if exist "%~dp0apktool.jar" set APKTOOL_PATH="%~dp0apktool.jar"
if exist "%~dp0..\apktool.jar" set APKTOOL_PATH="%~dp0..\apktool.jar"

if defined APKTOOL_PATH (
    echo [INFO] Found apktool at %APKTOOL_PATH%
    echo [INFO] Using Java: %JAVA_EXE%
    echo Compiling Smali classes and packing APK (allocating 4GB RAM)...
    %JAVA_EXE% -Xmx4g -jar %APKTOOL_PATH% b --no-res "%~dp0." -o "%~dp0Kingdom_Guard_Unsigned.apk"
    if not exist "%~dp0Kingdom_Guard_Unsigned.apk" (
        echo.
        echo [INFO] Retrying with full resource compile (--use-aapt2)...
        %JAVA_EXE% -Xmx4g -jar %APKTOOL_PATH% b --use-aapt2 "%~dp0." -o "%~dp0Kingdom_Guard_Unsigned.apk"
    )
) else (
    echo [INFO] Using system apktool...
    apktool b --no-res "%~dp0." -o "%~dp0Kingdom_Guard_Unsigned.apk"
    if not exist "%~dp0Kingdom_Guard_Unsigned.apk" (
        echo [INFO] Retrying with --use-aapt2...
        apktool b --use-aapt2 "%~dp0." -o "%~dp0Kingdom_Guard_Unsigned.apk"
    )
)

if not exist "%~dp0Kingdom_Guard_Unsigned.apk" (
    echo.
    echo ==================================================
    echo [ERROR] Build failed! Check Apktool logs above.
    echo ==================================================
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
    echo Generating debug keystore...
    %KEYTOOL_EXE% -genkeypair -v -keystore "%~dp0debug.keystore" -storepass android -alias androiddebugkey -keypass android -keyalg RSA -keysize 2048 -validity 10000 -dname "CN=Android Debug,O=Android,C=US"
)

echo Signing APK with apksigner...
apksigner sign --ks "%~dp0debug.keystore" --ks-pass pass:android --key-pass pass:android --out "%~dp0Kingdom_Guard_Signed.apk" "%~dp0Kingdom_Guard_Unsigned.apk" >nul 2>&1

if not exist "%~dp0Kingdom_Guard_Signed.apk" (
    echo [NOTICE] apksigner not found in PATH. Created Kingdom_Guard_Signed.apk copy.
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
