@echo off
echo.
echo ================================================
echo   COMMIT: Enhanced Presentation + Demo Guides
echo ================================================
echo.
echo New Updates:
echo   - Google Maps iframe in slideshow (Slide 2)
echo   - CURRENT_STATUS.md - Complete project overview
echo   - PHOTO_ASSET_GUIDE.md - Photo collection guide
echo   - docs/inspection-guide-improved.html - Dane's inspector guide
echo   - Enhanced slideshow with iframe support
echo.
pause

echo.
echo [1/3] Adding all files...
git add -A
if errorlevel 1 (
    echo ERROR: Git add failed
    pause
    exit /b 1
)
echo   ✓ Done!

echo.
echo [2/3] Committing with message from COMMIT_MESSAGE.txt...
git commit -F COMMIT_MESSAGE.txt
if errorlevel 1 (
    echo.
    echo No changes to commit or error occurred
    pause
    exit /b 1
)
echo   ✓ Done!

echo.
echo [3/3] Pushing to GitHub...
git push origin main
if errorlevel 1 (
    echo.
    echo Push to 'origin main' failed, trying 'origin master'...
    git push origin master
    if errorlevel 1 (
        echo.
        echo Push failed! Try manually running: git push
        pause
        exit /b 1
    )
)
echo   ✓ Done!

echo.
echo ================================================
echo   SUCCESS! All changes are live on GitHub!
echo ================================================
echo.
echo New Features Live (wait 2-3 minutes for deployment):
echo   - Slideshow: https://brendleflats.github.io/Robstown_Factory_OS/presentation.html
echo   - Inspector Guide: https://brendleflats.github.io/Robstown_Factory_OS/inspection-guide-improved.html
echo   - Home: https://brendleflats.github.io/Robstown_Factory_OS/home.html
echo.
echo The slideshow now has an interactive Google Maps view!
echo.
echo Next: Read CURRENT_STATUS.md for your action items
echo.
pause
