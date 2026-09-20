@echo off
title Push Project to GitHub with Git LFS (Joker055bf/KINGDOM-GAME)
color 0D
echo ==================================================
echo Automated Upload to GitHub Repository:
echo https://github.com/Joker055bf/KINGDOM-GAME
echo ==================================================
echo.

set REPO_URL=https://github.com/Joker055bf/KINGDOM-GAME.git

echo [1/6] Cleaning up old git history to enable LFS properly...
if exist ".git" (
    rmdir /s /q ".git" >nul 2>&1
)

echo [2/6] Initializing fresh Git repository...
git init

echo [3/6] Initializing Git LFS for large files (*.so, *.ab, *.apk, *.jar)...
git lfs install
git lfs track "*.so"
git lfs track "*.apk"
git lfs track "*.jar"
git lfs track "*.ab"

echo [4/6] Staging files (Large files will be tracked via LFS)...
git add .gitattributes
git add .

echo [5/6] Creating fresh commit with LFS pointers...
git commit -m "Upload Kingdom Guard APK source code with Git LFS support"
git branch -M main
git remote remove origin >nul 2>&1
git remote add origin %REPO_URL%

echo.
echo [6/6] Pushing files and LFS objects to GitHub...
echo (Uploading LFS files may take a few minutes depending on connection speed)
echo.

git push -u origin main --force

if %errorlevel% equ 0 (
    echo.
    echo ==================================================
    echo [SUCCESS] All files and LFS objects uploaded successfully!
    echo.
    echo Check your GitHub Actions to download built APK:
    echo https://github.com/Joker055bf/KINGDOM-GAME/actions
    echo ==================================================
) else (
    echo.
    echo ==================================================
    echo [ERROR] Upload failed!
    echo.
    echo Please make sure:
    echo 1. Git and Git LFS are installed on your PC
    echo 2. You are logged in to your GitHub account
    echo ==================================================
)

echo.
pause
