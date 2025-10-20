@echo off
echo ========================================
echo Robstown Factory OS - Final Commit
echo ========================================
echo.

cd /d "%~dp0"

echo [1/6] Clearing git cache...
git rm -r --cached . >nul 2>&1

echo [2/6] Re-adding files (respecting .gitignore)...
git add .

echo [3/6] Checking status...
git status

echo.
echo [4/6] Committing changes...
git commit -m "Final update: Complete navigation system, photo integration, documentation suite"

echo.
echo [5/6] Pushing to GitHub...
git push origin main

if %ERRORLEVEL% EQU 0 (
    echo.
    echo ========================================
    echo SUCCESS! All changes pushed to GitHub
    echo ========================================
    echo.
    echo Your site is live at:
    echo https://brendleflats.github.io/Robstown_Factory_OS/home.html
    echo.
) else (
    echo.
    echo ========================================
    echo PUSH FAILED - See error above
    echo ========================================
    echo.
    echo If you see "file too large" errors:
    echo 1. Check that .gitignore is working
    echo 2. Large files should be excluded
    echo 3. Run this script again
    echo.
)

echo [6/6] Done!
pause
