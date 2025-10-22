@echo off
REM Cleanup redundant documentation files

echo Creating backup folder...
if not exist "old_docs_backup" mkdir old_docs_backup

echo Moving redundant markdown files...

REM Move all the redundant MD files
for %%f in (
    AI_WORKFLOW_SIMPLE.md
    ALL_FIXES_APPLIED.md
    CLEANUP_GUIDE.md
    COMPREHENSIVE_ACTION_PLAN.md
    COMPREHENSIVE_ANALYSIS.md
    COMPREHENSIVE_FIX_PLAN.md
    COMPREHENSIVE_PROJECT_STATUS.md
    COMPREHENSIVE_SHOWCASE_PLAN.md
    COMPREHENSIVE_SYSTEM_ANALYSIS.md
    CURRENT_STATUS.md
    CURRENT_STATUS_FINAL.md
    DASHBOARD_FIXED.md
    DEMO_GUIDE_FOR_DANE.md
    DEMO_VIDEO_GUIDE.md
    DOCKER_SIMPLE_GUIDE.md
    DO_THESE_3_THINGS_TONIGHT.md
    EXECUTION_SUMMARY.md
    EXECUTIVE_SUMMARY.md
    FINAL_STATUS_AND_DEMO_GUIDE.md
    FIXED_AND_READY.md
    GITHUB_DEPLOY.md
    GITHUB_PAGES_SETUP.md
    GOOGLE_DRIVE_SETUP.md
    HOW_TO_COMMIT.md
    INTEGRATION_GUIDE.md
    INVENTORY_DATA_PLAN.md
    MASTER_ACTION_PLAN.md
    MASTER_INTEGRATION.md
    NAVIGATION_INTEGRATION.md
    PHOTO_ASSET_CHECKLIST_COMPLETE.md
    PHOTO_ASSET_GUIDE.md
    PHOTO_CHECKLIST.md
    PHOTO_CHECKLIST_SIMPLE.md
    PHOTO_PLACEMENT_GUIDE.md
    POST_RUN_STATUS.md
    PROJECT_ANALYSIS.md
    PUSH_FIX_GUIDE.md
    QUICKSTART.md
    README_COMPLETE_SYSTEM.md
    README_NEW.md
    READY_TO_COMMIT.md
    READ_ME_FIRST_ROY.md
    READ_THIS_FIRST.md
    READ_THIS_FIRST_ROY.md
    RESTRUCTURE_GUIDE.md
    START_HERE.md
    START_HERE_FINAL.md
    START_HERE_NOW.md
    START_HERE_NOW_SIMPLE.md
    START_HERE_ROY.md
    START_HERE_TODAY.md
    START_INVENTORY_DEMO.md
    STATUS_AND_NEXT_STEPS.md
    STATUS_REPORT.md
    TODAYS_ACTION_GUIDE.md
    TODAYS_ACTION_PLAN.md
    TODAYS_PHOTO_CHECKLIST.md
    TODAY_ANALYSIS.md
    TODAY_CHECKLIST.md
    TODAY_SIMPLE_PLAN.md
    TONIGHTS_WINS.md
    TONIGHT_ACTION_PLAN.md
    WHATS_NEXT.md
    WHAT_YOU_NEED_TODAY.md
) do (
    if exist "%%f" (
        move "%%f" old_docs_backup\ >nul 2>&1
        echo   - Moved %%f
    )
)

echo.
echo Moving redundant batch files...

for %%f in (
    check_large_files.bat
    commit_fixes.bat
    COMMIT_NOW.bat
    copy-oct20-photos.bat
    DEPLOY_COMPLETE.bat
    export-for-review.bat
    final_commit.bat
    final_push.bat
    fix-constants.bat
    fix_and_commit.bat
    fix_large_file.bat
    fix_push.bat
    fix_video_push.bat
    force_push.bat
    IMPRESS_ME.bat
    integrate-oct20-photos.bat
    integrate-photos.bat
    move_image.bat
    organize-assets.bat
    PUSH_NOW.bat
    push_to_github.bat
    reorganize-pages.bat
    restructure.bat
    STATUS_REPORT_POST_RUN.bat
    ultimate_push_fix.bat
    update-inventory.bat
    update_github.bat
) do (
    if exist "%%f" (
        move "%%f" old_docs_backup\ >nul 2>&1
        echo   - Moved %%f
    )
)

echo.
echo Moving redundant scripts and files...

for %%f in (
    commit.js
    convert-inventory.js
    export-for-review.js
    restructure.js
    restructure.ps1
    COMMIT_MESSAGE.txt
    instructions.txt
    inventory-summary.md
    inventory-template.json
    inventory-template-v2.json
    PROJECT_OVERVIEW.html
    roy.html
    roy.txt
) do (
    if exist "%%f" (
        move "%%f" old_docs_backup\ >nul 2>&1
        echo   - Moved %%f
    )
)

echo.
echo ============================================
echo CLEANUP COMPLETE!
echo ============================================
echo.
echo Kept essential files:
echo   - README.md (main readme)
echo   - GUIDE.md (your single comprehensive guide)
echo   - CHANGELOG.md (version history)
echo   - quick_commit.bat (deployment)
echo   - check_git.bat (git verification)
echo   - test_git.bat (connection test)
echo.
echo All redundant files backed up to: old_docs_backup\
echo.
pause
