FROM python:3.10-buster

WORKDIR /app

COPY . .

RUN pip install --no-cache-dir -r requirements.txt

# CMD ["gunicorn", "--bind", "0.0.0.0:5001", "app:app"]
CMD ["python", "app.py"]

