@echo off
echo.
echo ========================================
echo   Committing Today's Work
echo ========================================
echo.
echo Adding new files:
echo   - docs/inspection-guide.html
echo   - COMPREHENSIVE_ACTION_PLAN.md
echo   - TODAYS_PHOTO_CHECKLIST.md  
echo   - WHAT_YOU_NEED_TODAY.md
echo   - STATUS_AND_NEXT_STEPS.md
echo.
pause

git add -A
git commit -F COMMIT_MESSAGE.txt
git push

echo.
echo ========================================
echo   SUCCESS! Changes are live on GitHub
echo ========================================
echo.
echo New page available:
echo   https://brendleflats.github.io/Robstown_Factory_OS/inspection-guide.html
echo.
echo All docs updated and ready for your photos!
echo.
pause
