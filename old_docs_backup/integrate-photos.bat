@echo off
echo Creating asset directory structure...

mkdir "C:\Users\Administrator\Desktop\Factory_OS\docs\assets" 2>nul
mkdir "C:\Users\Administrator\Desktop\Factory_OS\docs\assets\app-screenshots" 2>nul
mkdir "C:\Users\Administrator\Desktop\Factory_OS\docs\assets\hero-items" 2>nul
mkdir "C:\Users\Administrator\Desktop\Factory_OS\docs\assets\site" 2>nul
mkdir "C:\Users\Administrator\Desktop\Factory_OS\docs\assets\progress" 2>nul

echo Copying strategic photos from Factory folder...

REM App Screenshots
copy "C:\Users\Administrator\Desktop\Factory_OS\Factory\Screenshot_20251019-174240.Chrome.png" "C:\Users\Administrator\Desktop\Factory_OS\docs\assets\app-screenshots\app-screenshot-1.png" >nul
copy "C:\Users\Administrator\Desktop\Factory_OS\Factory\Screenshot_20251019-154856.Chrome.png" "C:\Users\Administrator\Desktop\Factory_OS\docs\assets\app-screenshots\app-screenshot-2.png" >nul
copy "C:\Users\Administrator\Desktop\Factory_OS\Factory\Screenshot_20251019-154901.Chrome.png" "C:\Users\Administrator\Desktop\Factory_OS\docs\assets\app-screenshots\app-screenshot-3.png" >nul

REM Hero Items
copy "C:\Users\Administrator\Desktop\Factory_OS\Factory\IMG_20251015_062433510_MP.jpg" "C:\Users\Administrator\Desktop\Factory_OS\docs\assets\hero-items\hero-item-1.jpg" >nul
copy "C:\Users\Administrator\Desktop\Factory_OS\Factory\IMG_20251019_171121572.jpg" "C:\Users\Administrator\Desktop\Factory_OS\docs\assets\hero-items\hero-item-2.jpg" >nul
copy "C:\Users\Administrator\Desktop\Factory_OS\Factory\IMG_20251019_171229155.jpg" "C:\Users\Administrator\Desktop\Factory_OS\docs\assets\hero-items\hero-item-3.jpg" >nul
copy "C:\Users\Administrator\Desktop\Factory_OS\Factory\IMG_20251019_171500142.jpg" "C:\Users\Administrator\Desktop\Factory_OS\docs\assets\hero-items\hero-item-4.jpg" >nul
copy "C:\Users\Administrator\Desktop\Factory_OS\Factory\IMG_20251019_171637838.jpg" "C:\Users\Administrator\Desktop\Factory_OS\docs\assets\hero-items\hero-item-5.jpg" >nul

REM Site Overview
copy "C:\Users\Administrator\Desktop\Factory_OS\Factory\1760842636728.jpg" "C:\Users\Administrator\Desktop\Factory_OS\docs\assets\site\site-overview-1.jpg" >nul
copy "C:\Users\Administrator\Desktop\Factory_OS\Factory\IMG_20251019_171809775.jpg" "C:\Users\Administrator\Desktop\Factory_OS\docs\assets\site\site-overview-2.jpg" >nul

REM Progress/Cleared Areas
copy "C:\Users\Administrator\Desktop\Factory_OS\Factory\IMG_20251019_172243983.jpg" "C:\Users\Administrator\Desktop\Factory_OS\docs\assets\progress\cleared-area-1.jpg" >nul
copy "C:\Users\Administrator\Desktop\Factory_OS\Factory\IMG_20251019_172346550.jpg" "C:\Users\Administrator\Desktop\Factory_OS\docs\assets\progress\cleared-area-2.jpg" >nul
copy "C:\Users\Administrator\Desktop\Factory_OS\Factory\IMG_20251019_172536415.jpg" "C:\Users\Administrator\Desktop\Factory_OS\docs\assets\progress\cleared-area-3.jpg" >nul

REM Copy existing factory-os-preview.png to assets
copy "C:\Users\Administrator\Desktop\Factory_OS\factory-os-preview.png" "C:\Users\Administrator\Desktop\Factory_OS\docs\assets\factory-os-preview.png" >nul

echo.
echo ========================================
echo Photo Integration Complete!
echo ========================================
echo.
echo Copied:
echo - 3 App Screenshots
echo - 5 Hero Items
echo - 2 Site Overviews  
echo - 3 Progress Photos
echo - 1 Dashboard Preview
echo ========================================
echo.

pause
