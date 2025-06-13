FROM python:3.10-slim
WORKDIR urs/src/app

# first dot is wherre the application is, second dot is where you wanna send it
copy . .
run pip install --no-cache-dir -r requirements.txt

expose 8000

# cmd runs after the container is up and running (everything above runs while the image is created)
cmd ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "8000"]