@echo off
cd /d "%~dp0"
.venv\Scripts\python.exe -m uvicorn src.main:app --host 127.0.0.1 --port 9797 > kuhi.log 2>&1
