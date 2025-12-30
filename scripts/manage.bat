@echo off
:menu
cls
echo ==========================================
echo           DockerMC Windows Manager
echo ==========================================
echo 1. Start Server [IMPORTANT: MAKE SURE YOU OPEN DOCKER DESKTOP!]
echo 2. Stop Server
echo 3. View Logs
echo 4. Restart Server
echo 5. Exit
echo ==========================================
set /p choice="Choose an option (1-5): "

if "%choice%"=="1" goto start
if "%choice%"=="2" goto stop
if "%choice%"=="3" goto logs
if "%choice%"=="4" goto restart
if "%choice%"=="5" exit

:start
echo Starting DockerMC...
docker-compose up -d
pause
goto menu

:stop
echo Stopping DockerMC...
docker-compose stop
pause
goto menu

:logs
echo Opening Server Logs (Ctrl+C to exit)...
docker-compose logs -f minecraft
pause
goto menu

:restart
echo Restarting Server...
docker-compose restart minecraft
pause
goto menu
