@echo off
chcp 65001 >nul
cd /d "%~dp0"
echo Instalando requisitos de SITRA-Campamentos v0.2...
py -m pip install --upgrade pip
py -m pip install -r requirements.txt
if errorlevel 1 (
  echo.
  echo No se pudo instalar con py. Intentando con python...
  python -m pip install -r requirements.txt
)
echo.
echo Instalacion finalizada. Presione una tecla para cerrar.
pause >nul
