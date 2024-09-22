#!/bin/bash

# Set the default port if not defined
PORT=${PORT:-8000}

# Run the Hypercorn server
UVICORN_CMD="uvicorn app.main:app --host=0.0.0.0 --port=$PORT --workers=1 --loop asyncio"

# Execute the command
$UVICORN_CMD
