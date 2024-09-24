#!/bin/bash

# Set the default port if not defined
PORT=${PORT:-8000}

# Run the Hypercorn server
uvicorn app.main:app --workers 1 --host=0.0.0.0 --port=$PORT
