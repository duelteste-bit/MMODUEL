@echo off
setlocal
cd /d "%~dp0"
set "VALDREN_NODE=node"
where node >nul 2>nul
if errorlevel 1 set "VALDREN_NODE=C:\Users\cunha\.cache\codex-runtimes\codex-primary-runtime\dependencies\node\bin\node.exe"
if not exist "%VALDREN_NODE%" if not "%VALDREN_NODE%"=="node" (
  echo Node.js nao encontrado. Instale Node.js 18 ou superior para iniciar o servidor.
  pause
  exit /b 1
)
start "Valdren" "http://localhost:8888"
"%VALDREN_NODE%" server.cjs
pause
