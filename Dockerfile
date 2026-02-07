FROM python:3.13-slim

WORKDIR /app


RUN apt-get update && apt-get install -y --no-install-recommends git ca-certificates \
    && rm -rf /var/lib/apt/lists/*


ARG REPO_URL="https://github.com/a355206/mini-docker-app.git"


RUN git clone --depth 1 ${REPO_URL} .


CMD ["python", "app.py"]
