@echo off
title Preparing dist folder for GitHub
color 0A
echo ==================================================
echo Copying all clean project files into dist folder...
echo ==================================================
echo.

set DIST_DIR=%~dp0dist

if not exist "%DIST_DIR%" mkdir "%DIST_DIR%"

echo Copying AndroidManifest.xml and apktool.yml...
copy /Y "%~dp0AndroidManifest.xml" "%DIST_DIR%\" >nul 2>&1
copy /Y "%~dp0apktool.yml" "%DIST_DIR%\" >nul 2>&1

echo Copying assets...
xcopy /E /I /Y /Q "%~dp0assets" "%DIST_DIR%\assets\" >nul 2>&1

echo Copying lib...
xcopy /E /I /Y /Q "%~dp0lib" "%DIST_DIR%\lib\" >nul 2>&1

echo Copying res...
xcopy /E /I /Y /Q "%~dp0res" "%DIST_DIR%\res\" >nul 2>&1

echo Copying smali folders...
if exist "%~dp0smali" xcopy /E /I /Y /Q "%~dp0smali" "%DIST_DIR%\smali\" >nul 2>&1
if exist "%~dp0smali_classes2" xcopy /E /I /Y /Q "%~dp0smali_classes2" "%DIST_DIR%\smali_classes2\" >nul 2>&1
if exist "%~dp0smali_classes3" xcopy /E /I /Y /Q "%~dp0smali_classes3" "%DIST_DIR%\smali_classes3\" >nul 2>&1
if exist "%~dp0smali_classes4" xcopy /E /I /Y /Q "%~dp0smali_classes4" "%DIST_DIR%\smali_classes4\" >nul 2>&1
if exist "%~dp0smali_classes5" xcopy /E /I /Y /Q "%~dp0smali_classes5" "%DIST_DIR%\smali_classes5\" >nul 2>&1
if exist "%~dp0smali_classes6" xcopy /E /I /Y /Q "%~dp0smali_classes6" "%DIST_DIR%\smali_classes6\" >nul 2>&1
if exist "%~dp0smali_classes7" xcopy /E /I /Y /Q "%~dp0smali_classes7" "%DIST_DIR%\smali_classes7\" >nul 2>&1

echo.
echo ==================================================
echo [SUCCESS] All files copied to dist folder!
echo Path: %DIST_DIR%
echo.
echo Now you can take everything inside 'dist' and put it on GitHub!
echo ==================================================
pause
