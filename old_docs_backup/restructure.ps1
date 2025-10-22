# Restructure Factory_OS project
Write-Host "Starting Factory_OS Restructuring..." -ForegroundColor Green

# Create new directory structure
Write-Host "`nCreating directory structure..." -ForegroundColor Yellow
New-Item -ItemType Directory -Force -Path "app" | Out-Null
New-Item -ItemType Directory -Force -Path "app\components" | Out-Null
New-Item -ItemType Directory -Force -Path "app\utils" | Out-Null
New-Item -ItemType Directory -Force -Path "docs" | Out-Null
New-Item -ItemType Directory -Force -Path ".github" | Out-Null
New-Item -ItemType Directory -Force -Path ".github\workflows" | Out-Null

# Move app files to app/
Write-Host "`nMoving application files to app/..." -ForegroundColor Yellow
$appFiles = @(
    "App.tsx",
    "constants.ts",
    "index.html",
    "index.tsx",
    "metadata.json",
    "package.json",
    "tsconfig.json",
    "types.ts",
    "vite.config.ts"
)

foreach ($file in $appFiles) {
    if (Test-Path $file) {
        Move-Item $file "app\" -Force
        Write-Host "  Moved: $file" -ForegroundColor Gray
    }
}

# Move components
Write-Host "`nMoving components..." -ForegroundColor Yellow
if (Test-Path "components") {
    Get-ChildItem "components\*.tsx" | ForEach-Object {
        Move-Item $_.FullName "app\components\" -Force
        Write-Host "  Moved: components\$($_.Name)" -ForegroundColor Gray
    }
    Remove-Item "components" -Recurse -Force
}

# Move utils
Write-Host "`nMoving utils..." -ForegroundColor Yellow
if (Test-Path "utils") {
    Get-ChildItem "utils\*.ts" | ForEach-Object {
        Move-Item $_.FullName "app\utils\" -Force
        Write-Host "  Moved: utils\$($_.Name)" -ForegroundColor Gray
    }
    Remove-Item "utils" -Recurse -Force
}

# Copy roy.html to docs/index.html
Write-Host "`nSetting up docs folder..." -ForegroundColor Yellow
if (Test-Path "roy.html") {
    Copy-Item "roy.html" "docs\index.html" -Force
    Write-Host "  Created: docs\index.html (from roy.html)" -ForegroundColor Gray
}

Write-Host "`nRestructuring complete!" -ForegroundColor Green
Write-Host "`nNext steps:" -ForegroundColor Cyan
Write-Host "1. CD into app directory: cd app" -ForegroundColor White
Write-Host "2. Install dependencies: npm install" -ForegroundColor White
Write-Host "3. Run dev server: npm run dev" -ForegroundColor White
Write-Host "4. Open docs\index.html to test the checklist" -ForegroundColor White
