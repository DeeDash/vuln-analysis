# Ollama + CUDA
FROM ollama/ollama:latest AS ollama-base

RUN apt-get update && apt-get install -y \
    wget unzip curl git jq && \
    rm -rf /var/lib/apt/lists/*

RUN ollama pull llama3:8b

COPY rag-data/ /root/rag-data/

FROM ghcr.io/open-webui/open-webui:cuda

COPY --from=ollama-base /root/rag-data/ /app/backend/data/rag/

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
