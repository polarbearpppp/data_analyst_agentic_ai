FROM python:3.11-slim

# Set working directory
WORKDIR /app

# Install system dependencies
RUN apt-get update && apt-get install -y \
    git wget curl build-essential libglib2.0-0 libgl1 libgomp1 libstdc++6 \
    && rm -rf /var/lib/apt/lists/*

# Copy requirements and install
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy project files
COPY . .

# Create artifacts folder
RUN mkdir -p /app/artifacts

# Default command
# CMD ["python", "agentic_credit_project.py"]
