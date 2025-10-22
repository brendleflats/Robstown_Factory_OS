@echo off
echo Setting up inventory images for app...
echo.

REM Create public directory and subdirectories
echo Creating folder structure...
if not exist "app\public" mkdir app\public
if not exist "app\public\assets" mkdir app\public\assets
if not exist "app\public\assets\hero-items" mkdir app\public\assets\hero-items
if not exist "app\public\assets\oct20" mkdir app\public\assets\oct20
if not exist "app\public\assets\inventory" mkdir app\public\assets\inventory

echo Copying hero item images...
if exist "docs\assets\hero-items\*.jpg" (
    copy "docs\assets\hero-items\*.jpg" "app\public\assets\hero-items\" /Y
    echo   - Copied hero items
) else (
    echo   - WARNING: docs\assets\hero-items\ not found
)

echo Copying Oct 20 images...
if exist "docs\assets\oct20\*.jpg" (
    copy "docs\assets\oct20\*.jpg" "app\public\assets\oct20\" /Y
    echo   - Copied Oct 20 images
) else (
    echo   - WARNING: docs\assets\oct20\ not found
)

echo.
echo ============================================
echo Image setup complete!
echo ============================================
echo.
echo Images copied to:
echo   app\public\assets\hero-items\
echo   app\public\assets\oct20\
echo.
echo Verifying...
if exist "app\public\assets\hero-items\hero-item-1.jpg" (
    echo   [OK] hero-item-1.jpg found
) else (
    echo   [ERROR] hero-item-1.jpg NOT found
)
if exist "app\public\assets\hero-items\hero-item-2.jpg" (
    echo   [OK] hero-item-2.jpg found
) else (
    echo   [ERROR] hero-item-2.jpg NOT found
)
if exist "app\public\assets\hero-items\hero-item-3.jpg" (
    echo   [OK] hero-item-3.jpg found
) else (
    echo   [ERROR] hero-item-3.jpg NOT found
)
echo.
echo Restart your dev server (npm run dev) to see images!
echo.
