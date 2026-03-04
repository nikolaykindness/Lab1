@echo off
chcp 65001 > nul
echo Запуск Days to New Year Service на Windows
echo.

echo 1. Запуск через Docker Compose
echo 2. Локальный запуск через Python
echo 3. Выход
echo.

set /p choice="Выберите вариант (1-3): "

if "%choice%"=="1" (
    cls
    echo Запуск через Docker Compose...
    docker-compose up
    goto end
)

if "%choice%"=="2" (
    echo "Установка зависимостей..."
    pip install -r requirements.txt
    cls
    echo Запуск сервера...
    python -m uvicorn app.main:app --host 0.0.0.0 --port 4200 --reload
    goto end
)

if "%choice%"=="3" (
    echo Выход...
    goto end
)

echo Неверный выбор!

:end
pause