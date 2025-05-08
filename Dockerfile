FROM ghcr.io/astral-sh/uv:alpine

WORKDIR /app

COPY . .

RUN apk add --no-cache python3
RUN uv sync

EXPOSE 7860

CMD ["uv", "run", "--no-sync", "--no-cache", "--", "uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "7860"]
