@echo off
echo ===================================
echo FIXING GIT PUSH ISSUE
echo ===================================

cd /d "%~dp0"

echo.
echo Current status:
git status

echo.
echo Step 1: Reset to last successful commit...
git reset --soft HEAD~1

echo.
echo Step 2: Check if large file exists...
if exist "Factory\VID_20251019_171316903.mp4" (
    echo Large video file found. Removing from tracking...
    git rm --cached "Factory\VID_20251019_171316903.mp4" 2>nul
)

echo.
echo Step 3: Adding .gitignore rule for large files...
echo Factory/*.mp4 >> .gitignore
echo Factory/VID_*.mp4 >> .gitignore

echo.
echo Step 4: Adding all changes (excluding large files)...
git add .

echo.
echo Step 5: Committing with clean history...
git commit -m "Update project - excluding large video files"

echo.
echo Step 6: Pushing to GitHub...
git push origin main

echo.
echo ===================================
echo DONE!
echo ===================================
pause
