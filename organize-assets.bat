@echo off
echo Creating assets directory structure...

mkdir docs\assets 2>nul
mkdir docs\assets\app-screenshots 2>nul
mkdir docs\assets\hero-items 2>nul
mkdir docs\assets\site 2>nul
mkdir docs\assets\progress 2>nul

echo Copying images...

copy /Y Factory\Screenshot_20251019-174240.Chrome.png docs\assets\app-screenshots\app-screenshot-1.png >nul
copy /Y Factory\Screenshot_20251019-154856.Chrome.png docs\assets\app-screenshots\app-screenshot-2.png >nul
copy /Y Factory\Screenshot_20251019-154901.Chrome.png docs\assets\app-screenshots\app-screenshot-3.png >nul

copy /Y Factory\IMG_20251015_062433510_MP.jpg docs\assets\hero-items\hero-item-1.jpg >nul
copy /Y Factory\IMG_20251019_171121572.jpg docs\assets\hero-items\hero-item-2.jpg >nul
copy /Y Factory\IMG_20251019_171229155.jpg docs\assets\hero-items\hero-item-3.jpg >nul

copy /Y Factory\1760842636728.jpg docs\assets\site\site-overview-1.jpg >nul
copy /Y Factory\IMG_20251019_171809775.jpg docs\assets\site\site-overview-2.jpg >nul

copy /Y Factory\IMG_20251019_172243983.jpg docs\assets\progress\cleared-area-1.jpg >nul
copy /Y Factory\IMG_20251019_172346550.jpg docs\assets\progress\cleared-area-2.jpg >nul
copy /Y Factory\IMG_20251019_172536415.jpg docs\assets\progress\cleared-area-3.jpg >nul

copy /Y factory-os-preview.png docs\assets\factory-os-preview.png >nul

echo.
echo Assets organized successfully!
echo.
pause
