#!/bin/bash
DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")
PYTHON_DIR="/usr/lib/python3"

echo "=========================================="
echo "        Directory Audit Report            "
echo "=========================================="

for DIR in "${DIRS[@]}"; do
    if [ -d "$DIR" ]; then
        PERMS=$(ls -ld "$DIR" | awk '{print $1, $3, $4}')
        SIZE=$(du -sh "$DIR" 2>/dev/null | cut -f1)
        echo "$DIR | Permissions: $PERMS | Size: $SIZE"
    else
        echo "ALERT: $DIR does not exist on this system."
    fi
done

echo "------------------------------------------"
echo "Checking Python Library Directory..."
if [ -d "$PYTHON_DIR" ]; then
    PERMS=$(ls -ld "$PYTHON_DIR" | awk '{print $1, $3, $4}')
    echo "Path: $PYTHON_DIR | Permissions: $PERMS"
else
    echo "Python library directory not found."
fi
echo "=========================================="