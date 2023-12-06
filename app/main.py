from fastapi import FastAPI
app = FastAPI()

@app.get("/")
def health_check():
    """Return health check

    Returns:json
    """
    return {"Status": "OK"}
