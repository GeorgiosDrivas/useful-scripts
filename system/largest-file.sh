#!/bin/bash

if [ -z "$1" ]; then
    echo "Usage: largest-file \"directory_url\""
    exit 1
fi

if [ ! -d "$1" ]; then
    echo "Error: Please provide a directory."
    exit 1
fi

find "$1" -type f -printf '%s %p\n' | sort -nr | head | awk '{print $1, $2}' | numfmt --to=iec --field=1