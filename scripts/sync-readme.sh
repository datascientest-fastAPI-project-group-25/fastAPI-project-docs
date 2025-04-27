#!/bin/bash
# Bash script to manually sync README files from app repository to docs repository

# Define paths
APP_REPO_PATH="../fastAPI-project-app"
DOCS_REPO_PATH="."

# Check if app repository exists
if [ ! -d "$APP_REPO_PATH" ]; then
    echo "Error: App repository not found at $APP_REPO_PATH"
    exit 1
fi

# Create necessary directories
APP_DOCS_PATH="$DOCS_REPO_PATH/docs/app"
FRONTEND_DOCS_PATH="$APP_DOCS_PATH/frontend"
BACKEND_DOCS_PATH="$APP_DOCS_PATH/backend"

mkdir -p "$APP_DOCS_PATH"
mkdir -p "$FRONTEND_DOCS_PATH"
mkdir -p "$BACKEND_DOCS_PATH"

# Copy README files
APP_README_PATH="$APP_REPO_PATH/README.md"
APP_DOCS_README_PATH="$APP_DOCS_PATH/README.md"

if [ -f "$APP_README_PATH" ]; then
    echo "Copying app README from $APP_README_PATH to $APP_DOCS_README_PATH"
    cp "$APP_README_PATH" "$APP_DOCS_README_PATH"
fi

# Copy frontend README if it exists
FRONTEND_README_PATH="$APP_REPO_PATH/frontend/README.md"
FRONTEND_DOCS_README_PATH="$FRONTEND_DOCS_PATH/README.md"

if [ -f "$FRONTEND_README_PATH" ]; then
    echo "Copying frontend README from $FRONTEND_README_PATH to $FRONTEND_DOCS_README_PATH"
    cp "$FRONTEND_README_PATH" "$FRONTEND_DOCS_README_PATH"
fi

# Copy backend README if it exists
BACKEND_README_PATH="$APP_REPO_PATH/backend/README.md"
BACKEND_DOCS_README_PATH="$BACKEND_DOCS_PATH/README.md"

if [ -f "$BACKEND_README_PATH" ]; then
    echo "Copying backend README from $BACKEND_README_PATH to $BACKEND_DOCS_README_PATH"
    cp "$BACKEND_README_PATH" "$BACKEND_DOCS_README_PATH"
fi

echo "README files synchronized successfully!"
