@echo off
echo.
echo ============================================
echo   IMAGE SETUP DIAGNOSTIC
echo ============================================
echo.

echo Checking source images...
if exist "docs\assets\hero-items" (
    echo [OK] docs\assets\hero-items folder exists
    dir "docs\assets\hero-items\*.jpg" /b
) else (
    echo [ERROR] docs\assets\hero-items NOT FOUND
)

echo.
echo Creating app\public structure...
mkdir "app\public" 2>nul
mkdir "app\public\assets" 2>nul
mkdir "app\public\assets\hero-items" 2>nul

echo.
echo Copying images with verification...
xcopy "docs\assets\hero-items\*.jpg" "app\public\assets\hero-items\" /Y /I

echo.
echo Checking destination...
if exist "app\public\assets\hero-items" (
    echo [OK] Destination folder created
    dir "app\public\assets\hero-items\*.jpg" /b
) else (
    echo [ERROR] Destination folder creation failed
)

echo.
echo Current working directory:
cd

echo.
echo Full path check:
dir "app\public\assets\hero-items" /b 2>nul

echo.
pause
