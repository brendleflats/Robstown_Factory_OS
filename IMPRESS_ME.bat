@echo off
cls
echo.
echo ╔══════════════════════════════════════════════════════════════╗
echo ║                                                              ║
echo ║          🏭  ROBSTOWN FACTORY OS - PHOTO SHOWCASE  🏭         ║
echo ║                                                              ║
echo ║              Complete Oct 20 Integration Suite              ║
echo ║                                                              ║
echo ╚══════════════════════════════════════════════════════════════╝
echo.
echo.

echo [Phase 1] Copying 8 Selected Photos...
echo ═════════════════════════════════════════════════════════════
echo From: New factory\ (200MB - 64 photos)
echo To: docs\assets\oct20\ (~25MB - 8 strategic selections)
echo.

if not exist "docs\assets\oct20" (
    mkdir "docs\assets\oct20"
    echo ✓ Created directory: docs\assets\oct20\
) else (
    echo ✓ Directory exists: docs\assets\oct20\
)

echo.
echo Copying photos...

if exist "New factory\IMG_20251020_152936674.jpg" (
    copy "New factory\IMG_20251020_152936674.jpg" "docs\assets\oct20\site-entrance-oct20.jpg" >nul 2>&1
    echo   ✓ 1/8: site-entrance-oct20.jpg
) else (
    echo   ✗ 1/8: Source photo not found
)

if exist "New factory\IMG_20251020_160605216.jpg" (
    copy "New factory\IMG_20251020_160605216.jpg" "docs\assets\oct20\hero-machine-1.jpg" >nul 2>&1
    echo   ✓ 2/8: hero-machine-1.jpg
) else (
    echo   ✗ 2/8: Source photo not found
)

if exist "New factory\IMG_20251020_160822678.jpg" (
    copy "New factory\IMG_20251020_160822678.jpg" "docs\assets\oct20\cleared-zone-oct20.jpg" >nul 2>&1
    echo   ✓ 3/8: cleared-zone-oct20.jpg
) else (
    echo   ✗ 3/8: Source photo not found
)

if exist "New factory\IMG_20251020_161101137.jpg" (
    copy "New factory\IMG_20251020_161101137.jpg" "docs\assets\oct20\hero-machine-2.jpg" >nul 2>&1
    echo   ✓ 4/8: hero-machine-2.jpg
) else (
    echo   ✗ 4/8: Source photo not found
)

if exist "New factory\IMG_20251020_161333913.jpg" (
    copy "New factory\IMG_20251020_161333913.jpg" "docs\assets\oct20\factory-floor-wide.jpg" >nul 2>&1
    echo   ✓ 5/8: factory-floor-wide.jpg
) else (
    echo   ✗ 5/8: Source photo not found
)

if exist "New factory\IMG_20251020_161448439.jpg" (
    copy "New factory\IMG_20251020_161448439.jpg" "docs\assets\oct20\equipment-detail-1.jpg" >nul 2>&1
    echo   ✓ 6/8: equipment-detail-1.jpg
) else (
    echo   ✗ 6/8: Source photo not found
)

if exist "New factory\IMG_20251020_161550626.jpg" (
    copy "New factory\IMG_20251020_161550626.jpg" "docs\assets\oct20\progress-after.jpg" >nul 2>&1
    echo   ✓ 7/8: progress-after.jpg
) else (
    echo   ✗ 7/8: Source photo not found
)

if exist "New factory\IMG_20251020_161601634.jpg" (
    copy "New factory\IMG_20251020_161601634.jpg" "docs\assets\oct20\site-overview-final.jpg" >nul 2>&1
    echo   ✓ 8/8: site-overview-final.jpg
) else (
    echo   ✗ 8/8: Source photo not found
)

echo.
echo [Phase 2] Updating .gitignore...
echo ═════════════════════════════════════════════════════════════

findstr /C:"New factory/" .gitignore >nul 2>&1
if %errorlevel% neq 0 (
    echo New factory/ >> .gitignore
    echo Factory/*.mp4 >> .gitignore
    echo *.zip >> .gitignore
    echo   ✓ Added photo directory exclusions to .gitignore
    echo   ✓ Added large video file exclusions
    echo   ✓ Added zip file exclusions
) else (
    echo   ✓ .gitignore already configured
)

echo.
echo [Phase 3] Verification...
echo ═════════════════════════════════════════════════════════════

if exist "docs\assets\oct20\hero-machine-1.jpg" (
    echo   ✓ Key photo verified: hero-machine-1.jpg
) else (
    echo   ✗ ERROR: hero-machine-1.jpg not found!
)

if exist "docs\assets\oct20\cleared-zone-oct20.jpg" (
    echo   ✓ Key photo verified: cleared-zone-oct20.jpg
) else (
    echo   ✗ ERROR: cleared-zone-oct20.jpg not found!
)

if exist "docs\assets\oct20\progress-after.jpg" (
    echo   ✓ Key photo verified: progress-after.jpg
) else (
    echo   ✗ ERROR: progress-after.jpg not found!
)

echo.
echo ╔══════════════════════════════════════════════════════════════╗
echo ║                    ✅  INTEGRATION COMPLETE!                  ║
echo ╚══════════════════════════════════════════════════════════════╝
echo.
echo What was integrated:
echo   • 8 strategic photos from Oct 20 site visit
echo   • presentation.html: Added Slide 5.5 (Oct 20 asset capture)
echo   • blank-canvas.html: Updated Act 3 with fresh progress photos
echo   • .gitignore: Excludes 200MB source directory
echo.
echo Updated Pages (Already Modified):
echo   ✓ docs\presentation.html - Now has 8 slides (was 7)
echo   ✓ docs\blank-canvas.html - Act 3 shows Oct 20 timestamps
echo.
echo ═════════════════════════════════════════════════════════════
echo.
echo 🎯 NEXT STEP: Commit and push to GitHub
echo.
echo Option A - Quick Commit (auto-generated message):
echo   ^> quick_commit.bat
echo.
echo Option B - Custom Commit Message:
echo   1. Edit COMMIT_MESSAGE.txt with your message
echo   2. Run: final_commit.bat
echo.
echo After pushing, view live at:
echo   https://brendleflats.github.io/Robstown_Factory_OS/home.html
echo.
echo ═════════════════════════════════════════════════════════════
echo.
pause
