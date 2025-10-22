@echo off
color 0A
echo.
echo ============================================
echo   FACTORY OS - DOCUMENTATION CLEANUP
echo ============================================
echo.
echo This script will:
echo   1. Move 70+ redundant files to backup folder
echo   2. Keep only essential docs (GUIDE.md, README.md, CHANGELOG.md)
echo   3. Keep only essential scripts (quick_commit.bat, check_git.bat, test_git.bat)
echo.
echo Press Ctrl+C to cancel, or
pause

echo.
echo [1/4] Creating backup folder...
if not exist "old_docs_backup" mkdir old_docs_backup
echo       Created: old_docs_backup\
echo.

echo [2/4] Moving redundant documentation files...
set count=0

REM Process in batches for better visibility
for %%f in (AI_WORKFLOW_SIMPLE.md ALL_FIXES_APPLIED.md CLEANUP_GUIDE.md) do if exist "%%f" (move "%%f" old_docs_backup\ >nul 2>&1 & set /a count+=1)
for %%f in (COMPREHENSIVE_ACTION_PLAN.md COMPREHENSIVE_ANALYSIS.md COMPREHENSIVE_FIX_PLAN.md) do if exist "%%f" (move "%%f" old_docs_backup\ >nul 2>&1 & set /a count+=1)
for %%f in (COMPREHENSIVE_PROJECT_STATUS.md COMPREHENSIVE_SHOWCASE_PLAN.md COMPREHENSIVE_SYSTEM_ANALYSIS.md) do if exist "%%f" (move "%%f" old_docs_backup\ >nul 2>&1 & set /a count+=1)
for %%f in (CURRENT_STATUS.md CURRENT_STATUS_FINAL.md DASHBOARD_FIXED.md) do if exist "%%f" (move "%%f" old_docs_backup\ >nul 2>&1 & set /a count+=1)
for %%f in (DEMO_GUIDE_FOR_DANE.md DEMO_VIDEO_GUIDE.md DOCKER_SIMPLE_GUIDE.md) do if exist "%%f" (move "%%f" old_docs_backup\ >nul 2>&1 & set /a count+=1)
for %%f in (DO_THESE_3_THINGS_TONIGHT.md EXECUTION_SUMMARY.md EXECUTIVE_SUMMARY.md) do if exist "%%f" (move "%%f" old_docs_backup\ >nul 2>&1 & set /a count+=1)
for %%f in (FINAL_STATUS_AND_DEMO_GUIDE.md FIXED_AND_READY.md GITHUB_DEPLOY.md) do if exist "%%f" (move "%%f" old_docs_backup\ >nul 2>&1 & set /a count+=1)
for %%f in (GITHUB_PAGES_SETUP.md GOOGLE_DRIVE_SETUP.md HOW_TO_COMMIT.md) do if exist "%%f" (move "%%f" old_docs_backup\ >nul 2>&1 & set /a count+=1)
for %%f in (INTEGRATION_GUIDE.md INVENTORY_DATA_PLAN.md MASTER_ACTION_PLAN.md) do if exist "%%f" (move "%%f" old_docs_backup\ >nul 2>&1 & set /a count+=1)
for %%f in (MASTER_INTEGRATION.md NAVIGATION_INTEGRATION.md PHOTO_ASSET_CHECKLIST_COMPLETE.md) do if exist "%%f" (move "%%f" old_docs_backup\ >nul 2>&1 & set /a count+=1)
for %%f in (PHOTO_ASSET_GUIDE.md PHOTO_CHECKLIST.md PHOTO_CHECKLIST_SIMPLE.md) do if exist "%%f" (move "%%f" old_docs_backup\ >nul 2>&1 & set /a count+=1)
for %%f in (PHOTO_PLACEMENT_GUIDE.md POST_RUN_STATUS.md PROJECT_ANALYSIS.md) do if exist "%%f" (move "%%f" old_docs_backup\ >nul 2>&1 & set /a count+=1)
for %%f in (PUSH_FIX_GUIDE.md QUICKSTART.md README_COMPLETE_SYSTEM.md) do if exist "%%f" (move "%%f" old_docs_backup\ >nul 2>&1 & set /a count+=1)
for %%f in (README_NEW.md READY_TO_COMMIT.md READ_ME_FIRST_ROY.md) do if exist "%%f" (move "%%f" old_docs_backup\ >nul 2>&1 & set /a count+=1)
for %%f in (READ_THIS_FIRST.md READ_THIS_FIRST_ROY.md RESTRUCTURE_GUIDE.md) do if exist "%%f" (move "%%f" old_docs_backup\ >nul 2>&1 & set /a count+=1)
for %%f in (START_HERE.md START_HERE_FINAL.md START_HERE_NOW.md) do if exist "%%f" (move "%%f" old_docs_backup\ >nul 2>&1 & set /a count+=1)
for %%f in (START_HERE_NOW_SIMPLE.md START_HERE_ROY.md START_HERE_TODAY.md) do if exist "%%f" (move "%%f" old_docs_backup\ >nul 2>&1 & set /a count+=1)
for %%f in (START_INVENTORY_DEMO.md STATUS_AND_NEXT_STEPS.md STATUS_REPORT.md) do if exist "%%f" (move "%%f" old_docs_backup\ >nul 2>&1 & set /a count+=1)
for %%f in (TODAYS_ACTION_GUIDE.md TODAYS_ACTION_PLAN.md TODAYS_PHOTO_CHECKLIST.md) do if exist "%%f" (move "%%f" old_docs_backup\ >nul 2>&1 & set /a count+=1)
for %%f in (TODAY_ANALYSIS.md TODAY_CHECKLIST.md TODAY_SIMPLE_PLAN.md) do if exist "%%f" (move "%%f" old_docs_backup\ >nul 2>&1 & set /a count+=1)
for %%f in (TONIGHTS_WINS.md TONIGHT_ACTION_PLAN.md WHATS_NEXT.md WHAT_YOU_NEED_TODAY.md inventory-summary.md) do if exist "%%f" (move "%%f" old_docs_backup\ >nul 2>&1 & set /a count+=1)

echo       Moved %count% markdown files
echo.

echo [3/4] Moving redundant batch scripts...
set count=0

for %%f in (check_large_files.bat commit_fixes.bat COMMIT_NOW.bat copy-oct20-photos.bat) do if exist "%%f" (move "%%f" old_docs_backup\ >nul 2>&1 & set /a count+=1)
for %%f in (DEPLOY_COMPLETE.bat export-for-review.bat final_commit.bat final_push.bat) do if exist "%%f" (move "%%f" old_docs_backup\ >nul 2>&1 & set /a count+=1)
for %%f in (fix-constants.bat fix_and_commit.bat fix_large_file.bat fix_push.bat) do if exist "%%f" (move "%%f" old_docs_backup\ >nul 2>&1 & set /a count+=1)
for %%f in (fix_video_push.bat force_push.bat IMPRESS_ME.bat integrate-oct20-photos.bat) do if exist "%%f" (move "%%f" old_docs_backup\ >nul 2>&1 & set /a count+=1)
for %%f in (integrate-photos.bat move_image.bat organize-assets.bat PUSH_NOW.bat) do if exist "%%f" (move "%%f" old_docs_backup\ >nul 2>&1 & set /a count+=1)
for %%f in (push_to_github.bat reorganize-pages.bat restructure.bat STATUS_REPORT_POST_RUN.bat) do if exist "%%f" (move "%%f" old_docs_backup\ >nul 2>&1 & set /a count+=1)
for %%f in (ultimate_push_fix.bat update-inventory.bat update_github.bat) do if exist "%%f" (move "%%f" old_docs_backup\ >nul 2>&1 & set /a count+=1)

echo       Moved %count% batch files
echo.

echo [4/4] Moving other redundant files...
set count=0

for %%f in (commit.js convert-inventory.js export-for-review.js restructure.js) do if exist "%%f" (move "%%f" old_docs_backup\ >nul 2>&1 & set /a count+=1)
for %%f in (restructure.ps1 COMMIT_MESSAGE.txt instructions.txt) do if exist "%%f" (move "%%f" old_docs_backup\ >nul 2>&1 & set /a count+=1)
for %%f in (inventory-template.json inventory-template-v2.json) do if exist "%%f" (move "%%f" old_docs_backup\ >nul 2>&1 & set /a count+=1)
for %%f in (PROJECT_OVERVIEW.html roy.html roy.txt) do if exist "%%f" (move "%%f" old_docs_backup\ >nul 2>&1 & set /a count+=1)

echo       Moved %count% other files
echo.

REM Update README if the new clean version exists
if exist "README_NEW_CLEAN.md" (
    echo [BONUS] Updating README.md with clean version...
    if exist "README.md" move "README.md" old_docs_backup\ >nul 2>&1
    ren "README_NEW_CLEAN.md" "README.md"
    echo       Updated README.md
    echo.
)

echo.
echo ============================================
echo   CLEANUP COMPLETE!
echo ============================================
echo.
color 0E
echo KEPT (Essential Files):
echo   - GUIDE.md (your single comprehensive guide)
echo   - README.md (brief overview)
echo   - CHANGELOG.md (version history)
echo   - quick_commit.bat (deployment)
echo   - check_git.bat (verification)
echo   - test_git.bat (testing)
echo.
color 0A
echo MOVED (Backup):
echo   - All redundant files backed up to: old_docs_backup\
echo   - Review backup folder, then delete when ready
echo.
echo NEXT STEPS:
echo   1. Review GUIDE.md
echo   2. Delete old_docs_backup\ when satisfied
echo   3. Commit changes: quick_commit.bat
echo.
echo See CLEANUP_SUMMARY.md for details
echo.
color 07
pause
