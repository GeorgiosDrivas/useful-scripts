#!/bin/bash

if [ -z "$1" ]; then
    echo "Usage: git-clone \"repository_url\""
    exit 1
fi

git clone "$1"

repo_name=$(basename -s .git "$1")

if [ ! -d "$repo_name" ]; then
    echo "Error: Failed to clone the repository."
    exit 1
fi

cd "$repo_name" || { echo "Error: Failed to navigate into '$repo_name'"; exit 1; }

if command -v code &> /dev/null; then
    code .
else
    echo "Warning: VS Code is not installed or not in PATH."
fi

echo "Repository cloned successfully into '$repo_name'!"
