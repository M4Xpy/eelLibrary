FROM python:3.10.12-slim
LABEL authors="voytkevychus@gmail.com"

ENV PYTHONUNBUFFERED=1


RUN apt-get update && apt-get install -y chromium

WORKDIR app/

COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

COPY . .

CMD ["python", "main.py"]

