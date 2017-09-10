#!/usr/bin/env bash

TARGET_FILE="$HOME/Desktop/test.txt"

if ! [ -e "$TARGET_FILE" ]; then
    touch "$TARGET_FILE"
fi

ENTRIES=$(wc -l < "$TARGET_FILE")
((ENTRIES++))

OUTPUT_STRING="$ENTRIES $(date)"

echo "$OUTPUT_STRING" >> "$TARGET_FILE"
exit 0
