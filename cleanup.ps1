# Cleanup redundant documentation files
Write-Host "Creating backup folder..." -ForegroundColor Cyan
if (!(Test-Path "old_docs_backup")) { 
    New-Item -ItemType Directory -Path "old_docs_backup" | Out-Null 
}

Write-Host "`nMoving redundant markdown files..." -ForegroundColor Cyan

$mdFiles = @(
    "AI_WORKFLOW_SIMPLE.md", "ALL_FIXES_APPLIED.md", "CLEANUP_GUIDE.md",
    "COMPREHENSIVE_ACTION_PLAN.md", "COMPREHENSIVE_ANALYSIS.md", "COMPREHENSIVE_FIX_PLAN.md",
    "COMPREHENSIVE_PROJECT_STATUS.md", "COMPREHENSIVE_SHOWCASE_PLAN.md", "COMPREHENSIVE_SYSTEM_ANALYSIS.md",
    "CURRENT_STATUS.md", "CURRENT_STATUS_FINAL.md", "DASHBOARD_FIXED.md",
    "DEMO_GUIDE_FOR_DANE.md", "DEMO_VIDEO_GUIDE.md", "DOCKER_SIMPLE_GUIDE.md",
    "DO_THESE_3_THINGS_TONIGHT.md", "EXECUTION_SUMMARY.md", "EXECUTIVE_SUMMARY.md",
    "FINAL_STATUS_AND_DEMO_GUIDE.md", "FIXED_AND_READY.md", "GITHUB_DEPLOY.md",
    "GITHUB_PAGES_SETUP.md", "GOOGLE_DRIVE_SETUP.md", "HOW_TO_COMMIT.md",
    "INTEGRATION_GUIDE.md", "INVENTORY_DATA_PLAN.md", "MASTER_ACTION_PLAN.md",
    "MASTER_INTEGRATION.md", "NAVIGATION_INTEGRATION.md", "PHOTO_ASSET_CHECKLIST_COMPLETE.md",
    "PHOTO_ASSET_GUIDE.md", "PHOTO_CHECKLIST.md", "PHOTO_CHECKLIST_SIMPLE.md",
    "PHOTO_PLACEMENT_GUIDE.md", "POST_RUN_STATUS.md", "PROJECT_ANALYSIS.md",
    "PUSH_FIX_GUIDE.md", "QUICKSTART.md", "README_COMPLETE_SYSTEM.md",
    "README_NEW.md", "READY_TO_COMMIT.md", "READ_ME_FIRST_ROY.md",
    "READ_THIS_FIRST.md", "READ_THIS_FIRST_ROY.md", "RESTRUCTURE_GUIDE.md",
    "START_HERE.md", "START_HERE_FINAL.md", "START_HERE_NOW.md",
    "START_HERE_NOW_SIMPLE.md", "START_HERE_ROY.md", "START_HERE_TODAY.md",
    "START_INVENTORY_DEMO.md", "STATUS_AND_NEXT_STEPS.md", "STATUS_REPORT.md",
    "TODAYS_ACTION_GUIDE.md", "TODAYS_ACTION_PLAN.md", "TODAYS_PHOTO_CHECKLIST.md",
    "TODAY_ANALYSIS.md", "TODAY_CHECKLIST.md", "TODAY_SIMPLE_PLAN.md",
    "TONIGHTS_WINS.md", "TONIGHT_ACTION_PLAN.md", "WHATS_NEXT.md",
    "WHAT_YOU_NEED_TODAY.md", "inventory-summary.md"
)

$batFiles = @(
    "check_large_files.bat", "commit_fixes.bat", "COMMIT_NOW.bat",
    "copy-oct20-photos.bat", "DEPLOY_COMPLETE.bat", "export-for-review.bat",
    "final_commit.bat", "final_push.bat", "fix-constants.bat",
    "fix_and_commit.bat", "fix_large_file.bat", "fix_push.bat",
    "fix_video_push.bat", "force_push.bat", "IMPRESS_ME.bat",
    "integrate-oct20-photos.bat", "integrate-photos.bat", "move_image.bat",
    "organize-assets.bat", "PUSH_NOW.bat", "push_to_github.bat",
    "reorganize-pages.bat", "restructure.bat", "STATUS_REPORT_POST_RUN.bat",
    "ultimate_push_fix.bat", "update-inventory.bat", "update_github.bat"
)

$otherFiles = @(
    "commit.js", "convert-inventory.js", "export-for-review.js",
    "restructure.js", "restructure.ps1", "COMMIT_MESSAGE.txt",
    "instructions.txt", "inventory-template.json", "inventory-template-v2.json",
    "PROJECT_OVERVIEW.html", "roy.html", "roy.txt"
)

$moved = 0
foreach ($file in $mdFiles + $batFiles + $otherFiles) {
    if (Test-Path $file) {
        Move-Item $file "old_docs_backup\" -Force
        Write-Host "  - Moved $file" -ForegroundColor Gray
        $moved++
    }
}

Write-Host "`n============================================" -ForegroundColor Green
Write-Host "CLEANUP COMPLETE!" -ForegroundColor Green
Write-Host "============================================`n" -ForegroundColor Green
Write-Host "Moved $moved files to old_docs_backup\" -ForegroundColor Yellow
Write-Host "`nKept essential files:" -ForegroundColor Cyan
Write-Host "  - README.md (main readme)" -ForegroundColor White
Write-Host "  - GUIDE.md (your single comprehensive guide)" -ForegroundColor White
Write-Host "  - CHANGELOG.md (version history)" -ForegroundColor White
Write-Host "  - quick_commit.bat (deployment)" -ForegroundColor White
Write-Host "  - check_git.bat (git verification)" -ForegroundColor White
Write-Host "  - test_git.bat (connection test)" -ForegroundColor White
Write-Host "`nAll redundant files backed up to: old_docs_backup\`n" -ForegroundColor Yellow
