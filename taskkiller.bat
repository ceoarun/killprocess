@echo off

:MENU
cls
echo 1. List running processes (Refresh)
echo 2. Restart script
echo 3. Exit
@echo off

:MENU
@echo off

:MENU
cls
echo 1. List running processes (Refresh)
echo 2. Restart script
echo 3. Exit

set /p choice=Enter your choice: 

if "%choice%"=="1" (
    echo List of running processes:
    tasklist
    echo.
    set /p processName=Enter the name or PID of the process to kill: 
    taskkill /F /IM %processName%
    pause
    goto MENU
)

if "%choice%"=="2" (
    echo Restarting script...
    timeout /nobreak /t 2 >nul
    start "" "%~dpnx0"
    exit
)

if "%choice%"=="3" (
    exit
)

echo Invalid choice. Please try again.
timeout /nobreak /t 2 >nul
goto MENU

