#!/bin/bash

# Script to generate a new TIL post with today's date

# Get title from argument or prompt
if [ -z "$1" ]; then
    echo "Enter post title:"
    read -r TITLE
else
    TITLE="$1"
fi

# Exit if no title provided
if [ -z "$TITLE" ]; then
    echo "Error: Post title is required"
    exit 1
fi

# Generate filename-friendly version of title (lowercase, spaces to hyphens)
FILENAME_TITLE=$(echo "$TITLE" | tr '[:upper:]' '[:lower:]' | tr ' ' '-' | sed 's/[^a-z0-9-]//g')

# Get current date and time
DATE=$(date +"%Y-%m-%d")
DATETIME=$(date +"%Y-%m-%d %H:%M:%S %z")

# Create filename
FILENAME="_posts/${DATE}-${FILENAME_TITLE}.md"

# Check if file already exists
if [ -f "$FILENAME" ]; then
    echo "Error: File $FILENAME already exists"
    exit 1
fi

# Create the post file with front matter
cat > "$FILENAME" << EOF
---
layout: post
title: "$TITLE"
date: $DATETIME
categories:
---

Write your TIL post here...

EOF

echo "Created new post: $FILENAME"

# Optionally open in editor (uncomment preferred editor)
# $EDITOR "$FILENAME"
# vim "$FILENAME"
# nvim "$FILENAME"
# code "$FILENAME"
