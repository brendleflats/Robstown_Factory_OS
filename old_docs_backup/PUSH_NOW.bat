@echo off
echo Adding all files...
git add .

echo Committing with message from COMMIT_MESSAGE.txt...
git commit -F COMMIT_MESSAGE.txt

echo Pushing to GitHub...
git push origin main

echo.
echo DONE! Check https://brendleflats.github.io/Robstown_Factory_OS/home.html in 2-3 minutes
pause
