@echo off
cd /d "%~dp0"
echo =============================================
echo  TOUCHLINE - One-time local setup
echo =============================================
echo This step downloads the required Node packages.
echo It does not upload your videos or app data.
echo An internet connection is needed for setup.
echo.
node --version >nul 2>&1
if errorlevel 1 (
  echo Node.js was not found. Install Node.js 20 or newer from nodejs.org, then run this file again.
  pause
  exit /b 1
)
npm install
if errorlevel 1 (
  echo.
  echo Installation failed. Check the error above and confirm you have an internet connection.
  pause
  exit /b 1
)
echo.
echo Setup complete. You can now run START_TOUCHLINE.bat.
pause
