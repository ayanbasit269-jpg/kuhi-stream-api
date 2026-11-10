# Vercel serverless entrypoint: every / (not under /api) is rewritten here
# (see vercel.json); we mount the Kuhi FastAPI app under /api and let root_path
# strip the prefix so its own routes (/anime/...) match.
from fastapi import FastAPI
from src.main import app as kuhi

app = FastAPI()
app.mount("/api", kuhi)
