#!/bin/bash
set -e

echo "Init Ollama"
until curl -s http://ollama:11434/api/version > /dev/null; do
    sleep 2
done

echo "Ollama Ready. Loading llama3:8b..."
curl -s -X POST http://ollama:11434/api/generate -d '{"model": "llama3:8b", "prompt": "Hello"}' > /dev/null || true

VECTOR_DB_PATH="/app/backend/data/vector_db"

if [ ! -d "$VECTOR_DB_PATH" ] || [ -z "$(ls -A "$VECTOR_DB_PATH")" ]; then
    echo "Indexing RAG documents..."
    python3 /app/backend/scripts/index_docs.py /app/backend/data/rag
else
    echo "Vector DB already exists. Skipping indexing."
fi

echo "Starting OpenWebUI..."
exec /app/start.sh
