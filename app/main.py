from fastapi import FastAPI
from datetime import datetime, timezone

app = FastAPI(title="Days to New Year Service")

@app.get("/info")
async def get_days_to_new_year():
    """
    Возвращает количество дней до наступления нового года
    """
    current_date = datetime.now(timezone.utc)
    new_year = datetime(current_date.year + 1, 1, 1, tzinfo=current_date.tzinfo)
    days_before_new_year = (new_year - current_date).days
    
    return {
        "days_before_new_year": days_before_new_year,
        "timezone": "UTC"
    }

@app.get("/")
async def root():
    return {
        "message": "Days to New Year Service",
        "endpoints": {
            "/info": "GET - returns days until New Year"
        }
    }