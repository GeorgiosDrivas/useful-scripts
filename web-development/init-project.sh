#!/bin/bash

if [ -z "$1" ]; then
    echo "Usage: init-project \"project_directory\""
    exit 1
fi

if [ ! -d "$1" ]; then
    echo "Error: Directory '$1' does not exist."
    exit 1
fi

cd "$1" || { echo "Error: Failed to navigate into '$1'"; exit 1; }

if ! npm i; then
    echo "Error: npm install failed."
    exit 1
fi

if ! npm run dev; then
    echo "Error: Failed to start development server."
    exit 1
fi