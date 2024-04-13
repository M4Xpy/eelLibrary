# Use an official Python runtime as a parent image
FROM python:3.10.12-slim
LABEL authors="voytkevychus@gmail.com"

# Set environment variables
ENV PYTHONUNBUFFERED=1

# Install system dependencies, including Chromium
RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        chromium \
        chromium-driver \
    && rm -rf /var/lib/apt/lists/*

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any needed dependencies specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Expose the port that your Eel app will run on
EXPOSE 8000

# Define the command to run your Eel app when the container starts
CMD ["python", "main.py"]


