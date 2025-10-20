@echo off
echo ====================================
echo Fixing Push Issue - Incremental Push
echo ====================================

cd /d "%~dp0"

REM Check for large files first
echo.
echo Checking for large files...
git rev-parse --quiet --verify HEAD >nul
if errorlevel 1 (
    echo This is the first commit
) else (
    for /f "delims=" %%i in ('git diff --cached --name-only --diff-filter=d') do (
        if exist "%%i" (
            for %%A in ("%%i") do (
                if %%~zA GTR 50000000 (
                    echo WARNING: Large file detected: %%i ^(%%~zA bytes^)
                )
            )
        )
    )
)

REM Configure git for better network handling
echo.
echo Configuring git for large push...
git config http.postBuffer 524288000
git config http.lowSpeedLimit 0
git config http.lowSpeedTime 999999
git config pack.windowMemory 10m
git config pack.packSizeLimit 20m

REM Try to push with compression
echo.
echo Attempting push with compression...
git push origin main --verbose

if errorlevel 1 (
    echo.
    echo Push failed. Trying alternative method...
    echo.
    
    REM Try chunked push
    echo Attempting to push in smaller chunks...
    git push origin main --thin --verbose
    
    if errorlevel 1 (
        echo.
        echo Still failing. Let's check what's trying to be pushed...
        git log origin/main..HEAD --oneline
        echo.
        echo File changes:
        git diff --stat origin/main HEAD
    )
)

echo.
echo Done!
pause
