import os
from fastapi import FastAPI

app = FastAPI()


@app.get("/")
async def root():
    app_message = os.environ.get("APP_MESSAGE", "Hello")

    return {"message": app_message}
