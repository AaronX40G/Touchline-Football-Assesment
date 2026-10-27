@echo off
cd /d "%~dp0"
echo =============================================
echo  TOUCHLINE - Local football assessment app
echo =============================================
if not exist "node_modules\" (
  echo Dependencies are not installed yet.
  echo Run INSTALL_DEPENDENCIES.bat first.
  pause
  exit /b 1
)
echo Starting the local app. Keep this window open while using it.
echo When Vite is ready, open http://127.0.0.1:5173
npm run dev
pause
