from fastapi import FastAPI

app = FastAPI()


@app.get("/echo")
def read_root(message: str):
    return message