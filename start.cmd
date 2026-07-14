@echo off
where node >nul 2>nul
if %ERRORLEVEL% NEQ 0 (
    echo ERROR: Node.js not found in PATH.
    echo Please install Node.js from https://nodejs.org ^(LTS version^) and restart Claude Desktop.
    exit /b 1
)
node "%~dp0server.js"
