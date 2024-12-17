# Gunakan base image Python
FROM python:3.9

# Set working directory
WORKDIR /app

# Salin file ke container
COPY requirements.txt .
COPY app.py .

# Install dependencies
RUN pip install -r requirements.txt

# Ekspos port 80
EXPOSE 80

# Jalankan aplikasi
CMD ["python", "app.py"]
