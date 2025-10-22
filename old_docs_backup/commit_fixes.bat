@echo off
echo ========================================
echo COMMITTING FIXES TO GITHUB
echo ========================================
echo.

cd /d "%~dp0"

echo Staging all changes...
git add -A

echo.
echo Current status:
git status --short

echo.
echo Creating commit...
git commit -m "Fixed navigation links, constants imports, and integrated all pages cohesively"

echo.
echo Pushing to GitHub...
git push origin main

echo.
echo ========================================
echo DONE! Check GitHub Pages in 2-3 minutes
echo ========================================
pause
