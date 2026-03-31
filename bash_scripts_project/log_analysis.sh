#!/bin/bash
LOGFILE="test_log.txt"
KEYWORD=${1:-"error"}
COUNT=0
LAST_MATCHES=()

cat > test_log.txt << EOF
System started successfully
error: failed to load module
warning: disk space running low
error: connection timeout occurred
System running normally
error: package not found
info: backup completed
error: permission denied
System check passed
warning: high memory usage
EOF

if [ ! -f "$LOGFILE" ]; then
    echo "Error: File $LOGFILE not found."
    exit 1
fi

if [ ! -s "$LOGFILE" ]; then
    echo "Error: File $LOGFILE is empty."
    exit 1
fi

echo "=========================================="
echo "Analyzing $LOGFILE for '$KEYWORD'..."
echo "=========================================="

while IFS= read -r LINE; do
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        COUNT=$((COUNT + 1))
        LAST_MATCHES+=("$LINE")
    fi
done < "$LOGFILE"

echo "Keyword '$KEYWORD' found $COUNT times."
echo "------------------------------------------"

if [ $COUNT -gt 0 ]; then
    echo "Last 5 occurrences:"
    printf '%s\n' "${LAST_MATCHES[@]}" | tail -n 5
fi
echo "=========================================="