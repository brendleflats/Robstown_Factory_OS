@echo off
REM Robstown Factory OS - Restructuring Script
REM This script reorganizes your project for better deployment

echo.
echo ================================================
echo   Robstown Factory OS - Project Restructure
echo ================================================
echo.
echo This will organize your project into:
echo   - app/      (React dashboard application)
echo   - docs/     (Static checklist for GitHub Pages)
echo.
echo Press any key to continue, or Ctrl+C to cancel...
pause >nul

echo.
echo [1/7] Creating directory structure...
if not exist "app" mkdir app
if not exist "app\components" mkdir app\components
if not exist "app\utils" mkdir app\utils
if not exist "docs" mkdir docs
if not exist ".github" mkdir .github
if not exist ".github\workflows" mkdir .github\workflows
echo   ✓ Done!

echo.
echo [2/7] Moving application files to app\...
if exist "App.tsx" move /Y "App.tsx" "app\" >nul
if exist "constants.ts" move /Y "constants.ts" "app\" >nul
if exist "index.html" move /Y "index.html" "app\" >nul
if exist "index.tsx" move /Y "index.tsx" "app\" >nul
if exist "metadata.json" move /Y "metadata.json" "app\" >nul
if exist "package.json" move /Y "package.json" "app\" >nul
if exist "tsconfig.json" move /Y "tsconfig.json" "app\" >nul
if exist "types.ts" move /Y "types.ts" "app\" >nul
if exist "vite.config.ts" move /Y "vite.config.ts" "app\" >nul
echo   ✓ Done!

echo.
echo [3/7] Moving component files...
if exist "components\*.tsx" move /Y "components\*.tsx" "app\components\" >nul
if exist "components" rmdir "components" >nul 2>&1
echo   ✓ Done!

echo.
echo [4/7] Moving utility files...
if exist "utils\*.ts" move /Y "utils\*.ts" "app\utils\" >nul
if exist "utils" rmdir "utils" >nul 2>&1
echo   ✓ Done!

echo.
echo [5/7] Setting up docs folder...
if exist "roy.html" copy /Y "roy.html" "docs\index.html" >nul
echo   ✓ Done!

echo.
echo [6/7] Setting up GitHub workflow...
if exist ".github_workflows_deploy-checklist.yml" (
    move /Y ".github_workflows_deploy-checklist.yml" ".github\workflows\deploy-checklist.yml" >nul
    echo   ✓ Done!
) else (
    echo   ⚠ Workflow file not found - check RESTRUCTURE_GUIDE.md
)

echo.
echo [7/7] Setting up Dockerfile...
if exist "app_Dockerfile" (
    move /Y "app_Dockerfile" "app\Dockerfile" >nul
    echo   ✓ Done!
) else (
    echo   ⚠ Dockerfile not found - check RESTRUCTURE_GUIDE.md
)

echo.
echo ================================================
echo   Restructuring Complete!
echo ================================================
echo.
echo Your new structure:
echo   /app/           - React application
echo   /docs/          - Project checklist
echo   /.github/       - GitHub Actions workflows
echo.
echo Next steps:
echo   1. cd app
echo   2. npm install
echo   3. npm run dev
echo.
echo To test the checklist:
echo   - Open docs\index.html in your browser
echo.
echo See RESTRUCTURE_GUIDE.md for detailed instructions.
echo.
pause
