@echo off
chcp 65001 >nul
cd /d "%~dp0"
echo Iniciando SITRA-Campamentos v0.6.1...
echo.
echo Si es la primera vez, ejecute INSTALAR_REQUISITOS.bat antes de iniciar.
echo.
echo El navegador debe abrir una sola vez. Si no abre automaticamente, entre manualmente a http://localhost:8501
echo.
py -m streamlit run app.py --server.address 0.0.0.0 --server.port 8501
if errorlevel 1 (
  echo.
  echo No se pudo iniciar con py. Intentando con python...
  python -m streamlit run app.py --server.address 0.0.0.0 --server.port 8501
)
pause
