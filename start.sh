#!/bin/bash

# Set the default port if not defined
PORT=${PORT:-8000}

# Force to run with only one worker (single thread)
WORKERS=1

# Run the uvicorn server without uvloop for compatibility
uvicorn app.main:app --workers "$WORKERS" --host=0.0.0.0 --port="$PORT" --http h11
