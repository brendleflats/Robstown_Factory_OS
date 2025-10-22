@echo off
color 0B
echo.
echo ============================================
echo   FACTORY OS - QUICK START
echo ============================================
echo.
echo Step 1: Setting up images...
call scripts\setup_inventory_images.bat

echo.
echo Step 2: Starting inventory app...
cd app
npm run dev
