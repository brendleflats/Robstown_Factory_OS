@echo off
REM Export Inventory for Dane/John Review
echo.
echo ================================================
echo   Export Inventory for Review
echo ================================================
echo.
echo This creates a CSV file that Dane and John
echo can review in Excel or Google Sheets.
echo.
pause

echo.
echo [1/2] Exporting to CSV...
node export-for-review.js
if errorlevel 1 (
    echo.
    echo ❌ Export failed!
    pause
    exit /b 1
)

echo.
echo [2/2] Opening CSV file...
timeout /t 2 /nobreak >nul

REM Find the CSV file (today's date)
for /f "delims=" %%a in ('powershell -Command "Get-Date -Format 'yyyy-MM-dd'"') do set TODAY=%%a
set CSVFILE=inventory-review-%TODAY%.csv

if exist "%CSVFILE%" (
    start "" "%CSVFILE%"
    echo   ✓ CSV opened in default app
) else (
    echo   ⚠ Could not find today's CSV file
    echo   Check directory for: inventory-review-*.csv
)

echo.
echo ================================================
echo   CSV Ready for Review!
echo ================================================
echo.
echo Instructions for Dane/John:
echo   1. Review each item in the spreadsheet
echo   2. In "APPROVE?" column, type YES or NO
echo   3. Add notes if needed
echo   4. Save the file
echo   5. Send back to Roy
echo.
echo After they review:
echo   Run: import-reviews.bat
echo.
pause
