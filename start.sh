#!/bin/bash

# Set the default port if not defined
PORT=${PORT:-8000}

# Run the Hypercorn server
HYPERCORN_CMD="hypercorn app.main:app --bind 0.0.0.0:$PORT --worker-class asyncio"

# Execute the command
$HYPERCORN_CMD
