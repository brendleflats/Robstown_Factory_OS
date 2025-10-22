@echo off
echo Cleaning up Factory_OS documentation...
echo.

REM Delete old README and recreate
if exist README.md del README.md

REM Run PowerShell cleanup script
powershell -ExecutionPolicy Bypass -File cleanup.ps1

echo.
echo ============================================
echo Cleanup complete! 
echo ============================================
echo.
echo Essential files remaining:
echo   - GUIDE.md (your single source of truth)
echo   - README.md (brief overview)
echo   - CHANGELOG.md (version history)
echo   - quick_commit.bat
echo   - check_git.bat
echo   - test_git.bat
echo.
echo All other docs moved to: old_docs_backup\
echo.
pause
