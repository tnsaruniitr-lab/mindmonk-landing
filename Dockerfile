# Static landing page server for Railway.
# Serves index.html + hero.mp4 on Railway's $PORT.
FROM python:3.12-slim
WORKDIR /site
COPY . .
EXPOSE 8080
CMD ["sh", "-c", "python -m http.server ${PORT:-8080} --bind 0.0.0.0"]
