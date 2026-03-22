# Use official Python image as base
FROM python:3.11-slim

# Set working directory inside container
WORKDIR /app

# Copy requirements and install them
COPY requirements.txt .
RUN pip install -r requirements.txt

# Copy project files into container
COPY . .

# Expose port 5000
EXPOSE 4000

# Run the Flask app
CMD ["python", "app.py"]
