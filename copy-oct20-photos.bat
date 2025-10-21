@echo off
echo ========================================
echo   Copying Oct 20 Site Photos
echo   (8 strategic selections from 64)
echo ========================================
echo.

REM Create the destination directory
if not exist "docs\assets\oct20" mkdir "docs\assets\oct20"

echo Copying photo 1/8: Site entrance...
copy "New factory\IMG_20251020_152936674.jpg" "docs\assets\oct20\site-entrance-oct20.jpg" >nul

echo Copying photo 2/8: Hero machine 1...
copy "New factory\IMG_20251020_160605216.jpg" "docs\assets\oct20\hero-machine-1.jpg" >nul

echo Copying photo 3/8: Cleared zone...
copy "New factory\IMG_20251020_160822678.jpg" "docs\assets\oct20\cleared-zone-oct20.jpg" >nul

echo Copying photo 4/8: Hero machine 2...
copy "New factory\IMG_20251020_161101137.jpg" "docs\assets\oct20\hero-machine-2.jpg" >nul

echo Copying photo 5/8: Factory floor wide view...
copy "New factory\IMG_20251020_161333913.jpg" "docs\assets\oct20\factory-floor-wide.jpg" >nul

echo Copying photo 6/8: Equipment detail...
copy "New factory\IMG_20251020_161448439.jpg" "docs\assets\oct20\equipment-detail-1.jpg" >nul

echo Copying photo 7/8: Progress after shot...
copy "New factory\IMG_20251020_161550626.jpg" "docs\assets\oct20\progress-after.jpg" >nul

echo Copying photo 8/8: Site overview final...
copy "New factory\IMG_20251020_161601634.jpg" "docs\assets\oct20\site-overview-final.jpg" >nul

echo.
echo ========================================
echo   SUCCESS! 8 photos copied
echo   Location: docs\assets\oct20\
echo   Total size: ~20-25MB (GitHub-safe)
echo ========================================
echo.
echo Next step: Run update-pages-with-photos.bat
pause
