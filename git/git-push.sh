#!/bin/bash

if [ ! -d ".git" ]; then
    echo "Error: This is not a Git repository. Run this script inside a Git project."
    exit 1
fi

if [ -z "$1" ] || [ -z "$2" ]; then
    echo "Usage: git-quick <repository_url> \"commit message\""
    exit 1
fi

git init

git remote add origin "$1"

git add .
git commit -m "$2"
git push -u origin master

echo "Changes pushed successfully!"
