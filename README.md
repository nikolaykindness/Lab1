# Лабораторная работа №1
## Days to New Year Service
Сервис для расчета количества дней до наступления нового года.

## Технологии
- Python 3.13
- FastAPI
- Docker / Docker Compose

## Запуск приложения

### Локальный запуск (без Docker)
1. Установите зависимости:
```bash
python -m pip install -r requirements.txt
python -m uvicorn app.main:app --host 0.0.0.0 --port 4200