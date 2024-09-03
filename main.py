# main.py
from fastapi import FastAPI

app = FastAPI()

@app.get("/")
def hi_fastapi():
    return "Hi, it's your FastAPI Service!"
