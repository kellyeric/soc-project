@echo off
cd /d "%~dp0"
set PORT=8080
echo Starting TWA SOC Academy on http://localhost:%PORT%
echo Close this window to stop the academy.
where py >nul 2>nul
if %errorlevel%==0 (
  start "" "http://localhost:%PORT%"
  py -m http.server %PORT%
  goto :eof
)
where python >nul 2>nul
if %errorlevel%==0 (
  start "" "http://localhost:%PORT%"
  python -m http.server %PORT%
  goto :eof
)
echo.
echo Python was not found. You have two options:
echo  1. Install Python from python.org (tick "Add python.exe to PATH"), then run this file again.
echo  2. Or simply double-click index.html to open the academy in your browser.
pause
