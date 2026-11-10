# Kuhi stream host as a standalone public backend (deploy to Render/Railway/Fly,
# then point the website's ANIME_SOURCES_BASE at its URL — see README → Deploy).
FROM python:3.12-slim
WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY . .

# Hugging Face Docker Spaces expect the app on 7860; Render/Railway inject $PORT
CMD ["sh", "-c", "uvicorn src.main:app --host 0.0.0.0 --port ${PORT:-7860}"]
