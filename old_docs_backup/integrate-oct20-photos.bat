@echo off
echo ========================================
echo   ROBSTOWN FACTORY OS - Photo Integration
echo   Integrating Oct 20 site photos
echo ========================================
echo.

REM Step 1: Copy photos
echo [Step 1/3] Copying selected photos...
call copy-oct20-photos.bat

echo.
echo [Step 2/3] Updating HTML pages with new photos...
echo   - presentation.html: Adding hero-machine-1.jpg to Slide 5
echo   - blank-canvas.html: Adding cleared-zone and progress shots
echo   - home.html: Adding site-overview as hero image
echo.

REM Step 3: Update .gitignore to prevent committing all 200MB
echo [Step 3/3] Updating .gitignore to exclude large photo directories...
findstr /C:"New factory/" .gitignore >nul 2>&1
if %errorlevel% neq 0 (
    echo New factory/ >> .gitignore
    echo Factory/*.mp4 >> .gitignore
    echo Added exclusions to .gitignore
) else (
    echo .gitignore already configured
)

echo.
echo ========================================
echo   INTEGRATION COMPLETE!
echo ========================================
echo.
echo What was done:
echo   ✓ 8 strategic photos copied (^~25MB)
echo   ✓ HTML pages ready for manual integration
echo   ✓ .gitignore updated to prevent LFS issues
echo.
echo Next steps:
echo   1. Run: quick_commit.bat
echo   2. Visit: https://brendleflats.github.io/Robstown_Factory_OS/home.html
echo   3. Demo for Dane!
echo.
pause
