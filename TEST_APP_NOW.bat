@echo off
color 0B
echo.
echo ============================================
echo   INVENTORY APP - QUICK START
echo ============================================
echo.
echo This will:
echo   1. Copy real factory images to app
echo   2. Test that the app runs correctly
echo   3. Open browser to view 4 real inventory items
echo.
pause

echo.
echo [Step 1/2] Setting up images...
call setup_inventory_images.bat

echo.
echo [Step 2/2] Starting development server...
echo.
echo The app will open in your browser.
echo You should see 4 real items with actual factory photos.
echo.
echo Press Ctrl+C to stop the server when done testing.
echo.
cd app
npm run dev
