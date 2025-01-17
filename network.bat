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
echo 3 - DNS Query
echo 4 - Show MAC Address
echo 5 - Energy Efficient
echo 6 - File/App Association
echo 7 - Disc Repair
echo 8 - Ping to URL
echo 9 - Users to File
echo 10 - Exit
set /p opt="Select an option then press ENTER: "
if %opt% == 1 goto IP_CONFIGURATIONS
if %opt% == 2 goto Renew_IP_CONFIGURATIONS
if %opt% == 3 goto DNS_Query
if %opt% == 4 goto Show_MAC_Address
if %opt% == 5 goto Energy_Efficient
if %opt% == 6 goto File_APP_Assoc
if %opt% == 7 goto Disc_Repair
if %opt% == 8 goto Ping_To_URL
if %opt% == 9 goto Users_To_File
if %opt% == 9 goto EXIT_SCREEN

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

:DNS_Query
set /p domain="Insert domain: "
set /p dnsserver="Insert dnsserver: "
nslookup %domain% %dnsserver%
pause
goto MENU

:Show_MAC_Address
getmac
pause
goto MENU

:Energy_Efficient
powercfg /energy
pause
goto MENU

:File_APP_Assoc
assoc >> OUTPUT.txt
pause
goto MENU

:Disc_Repair
chkdsk /f /r
pause
goto MENU

:Ping_To_URL
set /p url="Insert URL: "
ping %url%
pause
goto MENU

:Users_To_File
net user > users.txt
pause
goto MENU

:EXIT_SCREEN
echo "Thanks!"
exit /b 0