@echo off
echo === ULTIMATE FIX FOR GIT PUSH ===
cd /d "%~dp0"

echo.
echo Step 1: Add large video to .gitignore...
echo Factory/*.mp4 >> .gitignore
echo *.mp4 >> .gitignore

echo.
echo Step 2: Remove video from current commit...
git rm --cached Factory/VID_20251019_171316903.mp4 2>nul

echo.
echo Step 3: Commit the removal...
git add .gitignore
git commit -m "Remove large video file and add to gitignore"

echo.
echo Step 4: Try normal push first...
git push origin main
if %ERRORLEVEL% EQU 0 (
    echo SUCCESS!
    goto end
)

echo.
echo Normal push failed. Trying force push...
git push origin main --force

:end
echo.
echo === Done! Check results above ===
pause
