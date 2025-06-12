FROM python:3.10-slim
WORKDIR urs/src/app

copy . .
run pip install --no-cache-dir -r requirements.txt

expose 8000

cmd ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "8000"]