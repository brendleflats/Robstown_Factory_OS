@echo off
REM Push to GitHub - Robstown Factory OS
echo.
echo ================================================
echo   Pushing to GitHub - Robstown Factory OS
echo ================================================
echo.
echo This will:
echo   1. Initialize git repository
echo   2. Add all files
echo   3. Commit changes
echo   4. Push to GitHub
echo.
echo Press any key to continue, or Ctrl+C to cancel...
pause >nul

echo.
echo [1/6] Initializing git repository...
git init
echo   ✓ Done!

echo.
echo [2/6] Configuring remote repository...
git remote add origin https://github.com/brendleflats/Robstown_Factory_OS.git 2>nul
if errorlevel 1 (
    echo   Remote already exists, updating...
    git remote set-url origin https://github.com/brendleflats/Robstown_Factory_OS.git
)
echo   ✓ Done!

echo.
echo [3/6] Adding all files to git...
git add .
echo   ✓ Done!

echo.
echo [4/6] Committing changes...
git commit -m "Initial commit: Restructured Factory OS with app and docs separation"
echo   ✓ Done!

echo.
echo [5/6] Setting branch to main...
git branch -M main
echo   ✓ Done!

echo.
echo [6/6] Pushing to GitHub...
git push -u origin main
if errorlevel 1 (
    echo.
    echo ⚠ Push failed! This might be because:
    echo   - You need to authenticate with GitHub
    echo   - The repository already exists with different content
    echo.
    echo Try these solutions:
    echo   1. If it asks for credentials, use your GitHub username and Personal Access Token
    echo   2. If force push is needed: git push -u origin main --force
    echo.
    pause
    exit /b 1
)
echo   ✓ Done!

echo.
echo ================================================
echo   Successfully Pushed to GitHub!
echo ================================================
echo.
echo Next steps:
echo   1. Visit: https://github.com/brendleflats/Robstown_Factory_OS
echo   2. Go to Settings → Pages
echo   3. Set Source to "GitHub Actions"
echo   4. Wait 2-3 minutes
echo   5. Visit: https://brendleflats.github.io/Robstown_Factory_OS/
echo.
echo Your checklist will be live for Dane and John to see!
echo.
pause
