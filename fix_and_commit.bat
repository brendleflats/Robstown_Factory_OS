@echo off
echo Fixing Git repository and committing changes...
cd /d "%~dp0"

REM Remove the large video file from git cache
echo Removing large video file from git tracking...
git rm --cached "Factory\VID_20251019_171316903.mp4" 2>nul

REM Add gitignore entry for large video files
echo Adding .gitignore rule for large video files...
echo Factory\VID_20251019_171316903.mp4 >> .gitignore

REM Add all changes
echo Adding all changes...
git add -A

REM Commit with message
echo Committing changes...
git commit -m "Final update: Navigation fixes, image integration, removed large video file"

REM Push to GitHub
echo Pushing to GitHub...
git push origin main

echo.
echo Done! Check output above for any errors.
pause
