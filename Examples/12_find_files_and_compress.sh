#!/bin/bash

# Directory to search
SEARCH_DIR="/home/user/documents"

# File extension to find
EXTENSION="*.txt"

# Output tar file
ARCHIVE_NAME="backup.tar.gz"

# Find files and compress them
find "$SEARCH_DIR" -type f -name "$EXTENSION" | tar -czvf "$ARCHIVE_NAME" -T -

echo "Compression completed: $ARCHIVE_NAME"
