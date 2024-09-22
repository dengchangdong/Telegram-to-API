#!/bin/bash

# Set the default port if not defined
PORT=${PORT:-8000}

# Force to run uvicorn with one worker (single thread)
uvicorn app.main:app --workers 1 --host=0.0.0.0 --port="$PORT" --http h11
