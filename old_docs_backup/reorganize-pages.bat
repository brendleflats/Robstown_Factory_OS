@echo off
echo.
echo =================================
echo   REORGANIZING GITHUB PAGES
echo =================================
echo.
echo Making home.html the main landing page...
echo.

cd docs

REM Backup current index.html as checklist.html
copy index.html checklist.html

REM Replace index.html with home.html
copy /Y home.html index.html

echo.
echo ✅ Done! Changes:
echo    - Old index.html saved as checklist.html
echo    - home.html is now the main index.html
echo.
echo Next: Update all links from index.html to checklist.html
echo.
pause
