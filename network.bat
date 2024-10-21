@echo off
REM ***********************************
REM Programmer. (C) 2024 Pedro Ferreira
REM Date....... 17/07/2024
REM Description Network script.
REM ***********************************
:MENU
cls
echo ############################
echo # NETWORK SCRIPT           #
echo # (C) 2024 . Pedro Ferreira#
echo ############################
echo 1 - IP Configuration
echo 2 - IP Renew
echo 3 - Exit
set /p opt="Select an option then press ENTER: "
if %opt% == 1 goto IP_CONFIGURATIONS
if %opt% == 2 goto Renew_IP_CONFIGURATIONS
if %opt% == 3 goto EXIT_SCREEN

goto MENU

:IP_CONFIGURATIONS
ipconfig /all
pause
goto MENU

:Renew_IP_CONFIGURATIONS
ipconfig /release
pause
ipconfig /renew
pause
goto MENU

:EXIT_SCREEN
echo "Thanks!"
exit /b 0