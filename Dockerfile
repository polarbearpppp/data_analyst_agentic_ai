# Base image
FROM python:3.11-slim

# Set work directory
WORKDIR /app

# Install system dependencies
RUN apt-get update && apt-get install -y \
    git wget curl build-essential libgl1 libglib2.0-0 && \
    rm -rf /var/lib/apt/lists/*

# Copy project files
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy rest of project
COPY . .

# Create artifacts folder
RUN mkdir -p /app/artifacts

# Default command (can be overridden)
CMD ["bash", "-c", "python agentic_credit_project.py --run ALL; tail -f /dev/null"]

