@echo off
REM Final commit and push - Complete Factory OS System
echo.
echo ================================================
echo   FINAL COMMIT - Robstown Factory OS
echo ================================================
echo.
echo Preparing to commit all changes including:
echo   - Updated README.md
echo   - Demo guide for Dane
echo   - Today's checklist
echo   - Dashboard screenshot in presentation
echo   - Navigation integration
echo   - Google Drive setup materials
echo   - SOP documents for Mike
echo   - Buyer packet templates
echo   - All documentation
echo.
pause

echo.
echo [1/5] Moving dashboard screenshot to docs...
copy factory-os-preview.png docs\factory-os-preview.png >nul 2>&1
if exist docs\factory-os-preview.png (
    echo   ✓ Screenshot moved successfully
) else (
    echo   ⚠ Screenshot already in place or not found
)

echo.
echo [2/5] Adding all files to git...
git add .
echo   ✓ Done!

echo.
echo [3/5] Committing changes...
if exist COMMIT_MESSAGE.txt (
    echo   Using message from COMMIT_MESSAGE.txt
    git commit -F COMMIT_MESSAGE.txt
) else (
    echo   Using default message
    git commit -m "Complete Factory OS v1.0: Dashboard, Checklist, Presentation with full navigation and demo materials"
)
echo   ✓ Done!

echo.
echo [4/5] Pushing to GitHub...
git push
if errorlevel 1 (
    echo.
    echo ⚠ Push may have failed. Trying again...
    git push
)
echo   ✓ Done!

echo.
echo [5/5] Verifying...
git status
echo.

echo ================================================
echo   SUCCESS! Everything is now on GitHub
echo ================================================
echo.
echo Your Factory OS is now live at:
echo.
echo 🏠 Home Page:
echo    https://brendleflats.github.io/Robstown_Factory_OS/home.html
echo.
echo ✅ Checklist (Default):
echo    https://brendleflats.github.io/Robstown_Factory_OS/
echo.
echo 📊 Presentation:
echo    https://brendleflats.github.io/Robstown_Factory_OS/presentation.html
echo.
echo 📦 Repository:
echo    https://github.com/brendleflats/Robstown_Factory_OS
echo.
echo Wait 2-3 minutes for GitHub Pages to rebuild, then check the URLs!
echo.
echo ================================================
echo   READY FOR DANE'S DEMO!
echo ================================================
echo.
echo Next steps:
echo   1. Wait 3 minutes for deployment
echo   2. Test all URLs above
echo   3. Read DEMO_GUIDE_FOR_DANE.md
echo   4. Read TODAY_CHECKLIST.md
echo   5. GO CRUSH THAT DEMO! 💪
echo.
pause
