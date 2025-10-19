@echo off
echo.
echo ================================================
echo   Git Status Check
echo ================================================
echo.

echo Checking if git is installed...
git --version
if errorlevel 1 (
    echo ✗ Git is not installed!
    echo   Download from: https://git-scm.com/download/win
    pause
    exit /b 1
)
echo ✓ Git is installed
echo.

echo Checking if this is a git repository...
git status 2>nul
if errorlevel 1 (
    echo ✗ Not a git repository yet
    echo   Will initialize when you push
) else (
    echo ✓ Git repository exists
)
echo.

echo Checking remote configuration...
git remote -v 2>nul
if errorlevel 1 (
    echo ✗ No remote configured yet
) else (
    echo ✓ Remote configured
)
echo.

echo Checking GitHub repository...
echo Repository: https://github.com/brendleflats/Robstown_Factory_OS
echo.

echo ================================================
echo   What was the error message?
echo ================================================
echo.
echo Common issues:
echo   1. Authentication failed - Need Personal Access Token
echo   2. Repository not found - Repo doesn't exist or no access
echo   3. Permission denied - Wrong credentials
echo   4. Repository exists - Already has different content
echo.
pause
