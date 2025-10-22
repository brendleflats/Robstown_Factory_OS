@echo off
echo ========================================
echo ULTIMATE PUSH FIX - Remove Large Files
echo ========================================
echo.
echo This will:
echo 1. Remove large Factory files from git history
echo 2. Keep them locally in .gitignore
echo 3. Push cleanly to GitHub
echo.
pause

cd /d "%~dp0"

REM Step 1: Remove Factory directory from git cache (but keep files locally)
echo.
echo Step 1: Removing Factory files from git tracking...
git rm -r --cached Factory/
if errorlevel 1 (
    echo No Factory files were tracked, continuing...
)

REM Step 2: Commit the removal
echo.
echo Step 2: Committing .gitignore changes...
git add .gitignore
git commit -m "Remove large Factory media files from git tracking (kept in .gitignore)"

REM Step 3: Configure git for better pushing
echo.
echo Step 3: Configuring git for optimal push...
git config http.postBuffer 524288000
git config pack.windowMemory 10m  
git config pack.packSizeLimit 20m

REM Step 4: Try pushing
echo.
echo Step 4: Attempting push...
git push origin main --verbose

if errorlevel 1 (
    echo.
    echo ========================================
    echo Push failed. Trying force push...
    echo ========================================
    echo.
    echo WARNING: This will overwrite remote with local state.
    echo Press Ctrl+C to cancel, or
    pause
    
    git push origin main --force --verbose
)

echo.
echo ========================================
echo Done! Check output above for success.
echo ========================================
pause
