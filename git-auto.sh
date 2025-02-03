#!/bin/bash

if [ ! -d ".git" ]; then
    echo "Error: This is not a Git repository. Run this script inside a Git project."
    exit 1
fi

if [ -z "$1" ]; then
    echo "Usage: git-quick \"commit message\""
    exit 1
fi

git add .
git commit -m "$1"
git push

echo "Changes pushed successfully!"