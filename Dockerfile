FROM python:3.10.12-slim
LABEL authors="m4k51m15k4m@gmail.com"

ENV PYTHONUNBUFFERED=1


RUN apt-get update && apt-get install -y chromium

WORKDIR app/

COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

# Встановлення Chromium
RUN apt-get update && apt-get install -y chromium

COPY . .

CMD ["python", "main.py"]

