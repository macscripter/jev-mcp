FROM python:3.13-slim
WORKDIR /app
COPY . .
RUN pip install --no-cache-dir .
CMD ["sh", "-c", "JEV_BIND_PORT=${PORT:-8080} jev-mcp"]
