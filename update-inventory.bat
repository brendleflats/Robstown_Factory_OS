@echo off
REM Update Dashboard with Real Inventory Data
echo.
echo ================================================
echo   Update Inventory Data
echo ================================================
echo.
echo This will convert your inventory-template.json
echo into the dashboard format and update the app.
echo.
pause

echo.
echo [1/3] Validating inventory data...
node convert-inventory.js
if errorlevel 1 (
    echo.
    echo ❌ Conversion failed! Check the errors above.
    echo.
    pause
    exit /b 1
)

echo.
echo [2/3] Starting dashboard...
cd app
start cmd /k "npm run dev"
cd ..

echo.
echo [3/3] Opening browser...
timeout /t 5 /nobreak >nul
start http://localhost:5173

echo.
echo ================================================
echo   Dashboard Updated!
echo ================================================
echo.
echo The dashboard should open in your browser.
echo Check that your real inventory is displayed.
echo.
echo Ready to record your demo video!
echo See DEMO_VIDEO_GUIDE.md for instructions.
echo.
pause
