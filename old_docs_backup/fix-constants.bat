@echo off
echo Regenerating constants with all required exports...
node convert-inventory.js
echo.
echo Done! Dashboard should work now.
echo.
pause
