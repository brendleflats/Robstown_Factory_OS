@echo off
echo Checking for large files in Factory directory...
echo.

cd /d "%~dp0\Factory"

for %%F in (*.*) do (
    if %%~zF GTR 10000000 (
        echo LARGE: %%F - %%~zF bytes
    )
)

echo.
echo Done!
pause
