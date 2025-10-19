@echo off
REM Quick Commit with Message File
echo.
echo ================================================
echo   Quick Commit to GitHub
echo ================================================
echo.
echo Using commit message from COMMIT_MESSAGE.txt
echo.
pause

echo.
echo [1/4] Moving screenshot if needed...
if exist factory-os-preview.png (
    copy factory-os-preview.png docs\factory-os-preview.png >nul 2>&1
    echo   ✓ Screenshot copied
) else (
    echo   - No screenshot to move
)

echo.
echo [2/4] Adding all files...
git add .
echo   ✓ Done!

echo.
echo [3/4] Committing with COMMIT_MESSAGE.txt...
git commit -F COMMIT_MESSAGE.txt
if errorlevel 1 (
    echo.
    echo ⚠ Commit failed - may be nothing to commit
    echo.
    pause
    exit /b 1
)
echo   ✓ Done!

echo.
echo [4/4] Pushing to GitHub...
git push
if errorlevel 1 (
    echo.
    echo ⚠ Push failed! Trying again...
    git push
)
echo   ✓ Done!

echo.
echo ================================================
echo   SUCCESS!
echo ================================================
echo.
echo Your changes are on GitHub!
echo.
echo Live URLs (wait 2-3 minutes):
echo   https://brendleflats.github.io/Robstown_Factory_OS/home.html
echo   https://brendleflats.github.io/Robstown_Factory_OS/
echo   https://brendleflats.github.io/Robstown_Factory_OS/presentation.html
echo.
pause
