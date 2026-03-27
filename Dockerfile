FROM python:3.11-slim

WORKDIR /app

# Install dependencies
COPY requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

#Copy app code
COPY app.py

#Port used by cloud run/GKE
ENV PORT=8080

#Command to run the app
CMD["python", "app.py"]