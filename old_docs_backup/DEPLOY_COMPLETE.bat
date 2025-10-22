@echo off
cls
echo.
echo ╔═══════════════════════════════════════════════════════════════════════╗
echo ║                                                                       ║
echo ║        🚀  ROBSTOWN FACTORY OS - COMPLETE DEPLOYMENT SUITE  🚀        ║
echo ║                                                                       ║
echo ║              Select & Deploy Oct 20 Field Photos + Fixes             ║
echo ║                                                                       ║
echo ╚═══════════════════════════════════════════════════════════════════════╝
echo.
echo.

REM ============================================================================
REM PHASE 1: CREATE DIRECTORY STRUCTURE
REM ============================================================================
echo [PHASE 1/7] Creating Directory Structure...
echo ═══════════════════════════════════════════════════════════════════════
echo.

if not exist "docs\assets\oct20" (
    mkdir "docs\assets\oct20"
    echo   ✓ Created: docs\assets\oct20\
) else (
    echo   ✓ Directory exists: docs\assets\oct20\
)

REM ============================================================================
REM PHASE 2: COPY 10 STRATEGIC PHOTOS
REM ============================================================================
echo.
echo [PHASE 2/7] Copying 10 Strategic Photos...
echo ═══════════════════════════════════════════════════════════════════════
echo   Source: New factory\ (200MB - NOT committed)
echo   Target: docs\assets\oct20\ (~28MB - WILL be committed)
echo.

set /a copied=0
set /a missing=0

REM Photo 1: Site Entrance
if exist "New factory\IMG_20251020_152936674.jpg" (
    copy /Y "New factory\IMG_20251020_152936674.jpg" "docs\assets\oct20\site-entrance.jpg" >nul 2>&1
    echo   ✓ 1/10: site-entrance.jpg
    set /a copied+=1
) else (
    echo   ✗ 1/10: Source missing
    set /a missing+=1
)

REM Photo 2: Hero Machine 1
if exist "New factory\IMG_20251020_160605216.jpg" (
    copy /Y "New factory\IMG_20251020_160605216.jpg" "docs\assets\oct20\hero-item-1.jpg" >nul 2>&1
    echo   ✓ 2/10: hero-item-1.jpg
    set /a copied+=1
) else (
    echo   ✗ 2/10: Source missing
    set /a missing+=1
)

REM Photo 3: Hero Machine 2
if exist "New factory\IMG_20251020_160822678.jpg" (
    copy /Y "New factory\IMG_20251020_160822678.jpg" "docs\assets\oct20\hero-item-2.jpg" >nul 2>&1
    echo   ✓ 3/10: hero-item-2.jpg
    set /a copied+=1
) else (
    echo   ✗ 3/10: Source missing
    set /a missing+=1
)

REM Photo 4: Hero Machine 3
if exist "New factory\IMG_20251020_161101137.jpg" (
    copy /Y "New factory\IMG_20251020_161101137.jpg" "docs\assets\oct20\hero-item-3.jpg" >nul 2>&1
    echo   ✓ 4/10: hero-item-3.jpg
    set /a copied+=1
) else (
    echo   ✗ 4/10: Source missing
    set /a missing+=1
)

REM Photo 5: Cleared Zone
if exist "New factory\IMG_20251020_161333913.jpg" (
    copy /Y "New factory\IMG_20251020_161333913.jpg" "docs\assets\oct20\cleared-zone-1.jpg" >nul 2>&1
    echo   ✓ 5/10: cleared-zone-1.jpg
    set /a copied+=1
) else (
    echo   ✗ 5/10: Source missing
    set /a missing+=1
)

REM Photo 6: Factory Floor Wide
if exist "New factory\IMG_20251020_161448439.jpg" (
    copy /Y "New factory\IMG_20251020_161448439.jpg" "docs\assets\oct20\factory-floor.jpg" >nul 2>&1
    echo   ✓ 6/10: factory-floor.jpg
    set /a copied+=1
) else (
    echo   ✗ 6/10: Source missing
    set /a missing+=1
)

REM Photo 7: Equipment Detail
if exist "New factory\IMG_20251020_161550626.jpg" (
    copy /Y "New factory\IMG_20251020_161550626.jpg" "docs\assets\oct20\equipment-detail.jpg" >nul 2>&1
    echo   ✓ 7/10: equipment-detail.jpg
    set /a copied+=1
) else (
    echo   ✗ 7/10: Source missing
    set /a missing+=1
)

REM Photo 8: Progress After
if exist "New factory\IMG_20251020_161601634.jpg" (
    copy /Y "New factory\IMG_20251020_161601634.jpg" "docs\assets\oct20\progress-after.jpg" >nul 2>&1
    echo   ✓ 8/10: progress-after.jpg
    set /a copied+=1
) else (
    echo   ✗ 8/10: Source missing
    set /a missing+=1
)

REM Photo 9: Work Zone
if exist "New factory\IMG_20251020_160700134.jpg" (
    copy /Y "New factory\IMG_20251020_160700134.jpg" "docs\assets\oct20\work-zone.jpg" >nul 2>&1
    echo   ✓ 9/10: work-zone.jpg
    set /a copied+=1
) else (
    echo   ✗ 9/10: Source missing
    set /a missing+=1
)

REM Photo 10: Site Overview
if exist "New factory\IMG_20251020_161153180.jpg" (
    copy /Y "New factory\IMG_20251020_161153180.jpg" "docs\assets\oct20\site-overview.jpg" >nul 2>&1
    echo   ✓ 10/10: site-overview.jpg
    set /a copied+=1
) else (
    echo   ✗ 10/10: Source missing
    set /a missing+=1
)

echo.
echo   Result: %copied%/10 photos copied successfully
if %missing% GTR 0 (
    echo   ⚠ Warning: %missing% photos were not found in source directory
)

REM ============================================================================
REM PHASE 3: UPDATE .GITIGNORE
REM ============================================================================
echo.
echo [PHASE 3/7] Updating .gitignore...
echo ═══════════════════════════════════════════════════════════════════════
echo.

findstr /C:"New factory/" .gitignore >nul 2>&1
if %errorlevel% neq 0 (
    echo # Large photo archives - not deployed >> .gitignore
    echo New factory/ >> .gitignore
    echo Factory/*.mp4 >> .gitignore
    echo *.zip >> .gitignore
    echo   ✓ Added exclusions to .gitignore
) else (
    echo   ✓ .gitignore already configured
)

REM ============================================================================
REM PHASE 4: FIX CONSTANTS.TS
REM ============================================================================
echo.
echo [PHASE 4/7] Fixing app/constants.ts Exports...
echo ═══════════════════════════════════════════════════════════════════════
echo.
echo   ⚠ Manual fix required - see MASTER_INTEGRATION.md
echo   Error: Missing STATUS_COLORS and MAP_STATUS_COLORS exports
echo.

REM ============================================================================
REM PHASE 5: FIX INDEX.HTML CHECKLIST LINK
REM ============================================================================
echo.
echo [PHASE 5/7] Fixing Checklist Navigation...
echo ═══════════════════════════════════════════════════════════════════════
echo.
echo   ⚠ Manual fix required
echo   File: docs\index.html
echo   Issue: "Open Checklist" button points to index.html
echo   Fix: Change href from "index.html" to "checklist.html"
echo.

REM ============================================================================
REM PHASE 6: VERIFICATION
REM ============================================================================
echo.
echo [PHASE 6/7] Verifying Deployment...
echo ═══════════════════════════════════════════════════════════════════════
echo.

if exist "docs\assets\oct20\hero-item-1.jpg" (
    echo   ✓ Hero item 1 verified
) else (
    echo   ✗ Hero item 1 missing
)

if exist "docs\assets\oct20\cleared-zone-1.jpg" (
    echo   ✓ Cleared zone verified
) else (
    echo   ✗ Cleared zone missing
)

if exist "docs\assets\oct20\progress-after.jpg" (
    echo   ✓ Progress photo verified
) else (
    echo   ✗ Progress photo missing
)

REM ============================================================================
REM PHASE 7: GIT STATUS
REM ============================================================================
echo.
echo [PHASE 7/7] Git Status...
echo ═══════════════════════════════════════════════════════════════════════
echo.
git status --short

REM ============================================================================
REM SUMMARY & NEXT STEPS
REM ============================================================================
echo.
echo.
echo ╔═══════════════════════════════════════════════════════════════════════╗
echo ║                      ✅  DEPLOYMENT PREPARED!                          ║
echo ╚═══════════════════════════════════════════════════════════════════════╝
echo.
echo What was completed:
echo   • Copied %copied%/10 strategic photos (~28MB)
echo   • Updated .gitignore to exclude 200MB source
echo   • Created docs\assets\oct20\ directory
echo.
echo ⚠ MANUAL FIXES REQUIRED (see MASTER_INTEGRATION.md):
echo   1. Fix app\constants.ts exports
echo   2. Fix docs\index.html checklist button href
echo   3. Update docs\presentation.html (add Slide 5.5)
echo   4. Update docs\blank-canvas.html (Acts 2 & 3 images)
echo.
echo 📋 NEXT STEPS:
echo   1. Review MASTER_INTEGRATION.md for detailed fixes
echo   2. Test all pages locally
echo   3. Run: quick_commit.bat
echo   4. Verify: https://brendleflats.github.io/Robstown_Factory_OS/
echo.
echo ═══════════════════════════════════════════════════════════════════════
echo.
pause
