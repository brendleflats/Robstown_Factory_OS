@echo off
echo Organizing scripts folder...
echo.

REM Create scripts directory
if not exist "scripts" mkdir scripts

REM Move all batch files to scripts folder
echo Moving batch files to scripts folder...

for %%f in (*.bat) do (
    if not "%%f"=="organize_scripts.bat" (
        if exist "%%f" (
            move "%%f" scripts\ >nul 2>&1
            echo   Moved %%f
        )
    )
)

echo.
echo ============================================
echo Organization complete!
echo ============================================
echo.
echo All scripts are now in: scripts\
echo.
echo To run scripts, use:
echo   scripts\TEST_APP_NOW.bat
echo   scripts\setup_inventory_images.bat
echo   scripts\quick_commit.bat
echo   etc.
echo.
pause
