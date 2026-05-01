#!/bin/bash
# disk_check.sh — minimal disk usage alert

THRESHOLD=80
USAGE=$(df / | awk 'NR==2 {print $5}' | tr -d '%')

if [ "$USAGE" -gt "$THRESHOLD" ]; then
    echo "WARNING: Disk usage is at ${USAGE}%"
else
    echo "Disk usage OK: ${USAGE}%"
fi
