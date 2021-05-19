from fastapi import FastAPI

app = FastAPI()


@app.get("/")
def read_root(message: str):
    return message