@echo off
chcp 65001 >nul
echo Direcciones IP de esta PC:
echo.
ipconfig | findstr /i "IPv4"
echo.
echo En Android abra: http://IP_DE_ESTA_PC:8501
echo Ejemplo: http://192.168.1.20:8501
echo.
pause
