# Vercel FastAPI entrypoint — the FastAPI preset routes all paths here;
# Kuhi's own routes (/anime/...) match as-is.
from src.main import app  # noqa: F401
