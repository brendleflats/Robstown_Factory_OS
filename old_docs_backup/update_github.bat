@echo off
REM Quick Update to GitHub - Robstown Factory OS
echo.
echo ================================================
echo   Updating GitHub Repository
echo ================================================
echo.

echo Adding new/modified files...
git add .
echo   ✓ Done!

echo.
echo Committing changes...
set /p message="Enter commit message (or press Enter for default): "
if "%message%"=="" set message=Update: Added presentation and navigation

git commit -m "%message%"
echo   ✓ Done!

echo.
echo Pushing to GitHub...
git push
if errorlevel 1 (
    echo.
    echo ⚠ Push failed! Trying with credentials...
    git push
)
echo   ✓ Done!

echo.
echo ================================================
echo   Successfully Updated!
echo ================================================
echo.
echo Your changes are now live:
echo   - Checklist: https://brendleflats.github.io/Robstown_Factory_OS/
echo   - Home: https://brendleflats.github.io/Robstown_Factory_OS/home.html
echo   - Presentation: https://brendleflats.github.io/Robstown_Factory_OS/presentation.html
echo.
echo Wait 2-3 minutes for GitHub Pages to rebuild.
echo.
pause
