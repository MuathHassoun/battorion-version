@echo off
setlocal enabledelayedexpansion

rem === Search for an .exe setup file in the current directory ===
for %%f in (*setup*.exe) do (
    set "setupFile=%%f"
)

rem === Check if a setup file was found ===
if not defined setupFile (
    echo [ERROR] No setup.exe file found in the current directory.
    pause
    exit /b
)

echo [INFO] Launching installer: !setupFile!
start "" "!setupFile!" /VERYSILENT /NORESTART

endlocal
