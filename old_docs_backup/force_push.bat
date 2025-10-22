@echo off
REM Force Push to GitHub (if repository already exists with content)
echo.
echo ================================================
echo   Force Push to GitHub
echo ================================================
echo.
echo ⚠️  WARNING: This will replace everything in the GitHub repo!
echo     Use this if the repository already exists with different content.
echo.
echo Press any key to continue, or Ctrl+C to cancel...
pause >nul

echo.
echo [1/5] Initializing git repository...
git init
echo   ✓ Done!

echo.
echo [2/5] Configuring remote...
git remote add origin https://github.com/brendleflats/Robstown_Factory_OS.git 2>nul
if errorlevel 1 (
    git remote set-url origin https://github.com/brendleflats/Robstown_Factory_OS.git
)
echo   ✓ Done!

echo.
echo [3/5] Adding all files...
git add .
echo   ✓ Done!

echo.
echo [4/5] Committing...
git commit -m "Initial commit: Restructured Factory OS with app and docs separation"
echo   ✓ Done!

echo.
echo [5/5] Force pushing to GitHub...
git push -u origin main --force
if errorlevel 1 (
    echo.
    echo ✗ Force push failed!
    echo.
    echo Possible reasons:
    echo   1. Need to authenticate (use Personal Access Token)
    echo   2. No network connection
    echo   3. Repository doesn't exist
    echo.
    echo See GITHUB_DEPLOY.md for authentication help
    pause
    exit /b 1
)

echo.
echo ================================================
echo   Successfully Pushed!
echo ================================================
echo.
echo Next: Enable GitHub Pages
echo   1. Visit: https://github.com/brendleflats/Robstown_Factory_OS
echo   2. Settings → Pages → Source: GitHub Actions
echo.
pause
