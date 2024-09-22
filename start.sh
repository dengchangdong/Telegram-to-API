#!/bin/bash

# Set the default port if not defined
PORT=${PORT:-8080}

WORKERS=3

# Force uvicorn to use default asyncio event loop
UVICORN_CMD="uvicorn app.main:app --host=0.0.0.0  --workers "$WORKERS" --port=$PORT --loop asyncio"

# Run the uvicorn server with default asyncio event loop
$UVICORN_CMD
