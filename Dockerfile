# Base image
FROM ubuntu:22.04

# Install dependencies
RUN apt-get update && apt-get install -y python3

# Set working directory
WORKDIR /app

# Copy application files
COPY ./02.docker/python-ornek-uygulama/app.py /app

# Run the application
CMD ["python3", "app.py"]