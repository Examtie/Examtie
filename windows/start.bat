@echo off

REM Check for administrator privileges
net session >nul 2>&1
if %errorLevel% NEQ 0 (
    echo.
    echo "Attempting to elevate privileges..."
    echo.
    powershell -Command "Start-Process -FilePath '%~dpnx0' -Verb RunAs"
    goto :eof
)
CD /D "%~dp0"

echo "✅ Running as Administrator."
echo "Current directory (after CD): %CD%"
echo.

echo "👀 Starting the Examtie Service..."
net stop winnat
docker compose up -d
net start winnat
echo "✅ App Deployed!!: http://localhost:5000"


echo.
echo "Script finished."
pause