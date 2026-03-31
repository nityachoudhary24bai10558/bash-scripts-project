#!/bin/bash
PACKAGE="python3"
echo "Checking system for $PACKAGE..."

if dpkg -s $PACKAGE &>/dev/null || rpm -q $PACKAGE &>/dev/null; then
    echo "STATUS: $PACKAGE is installed."
    if command -v dpkg &>/dev/null; then
        apt-cache show $PACKAGE | grep -E 'Version|Description' | head -n 2
    else
        rpm -qi $PACKAGE | grep -E 'Version|License|Summary'
    fi
else
    echo "STATUS: $PACKAGE is NOT installed."
fi

echo "------------------------------------------"
case $PACKAGE in
    python3) echo "Philosophy: Python proves that a language built for readability can conquer the world." ;;
    httpd|apache2) echo "Philosophy: Apache built the backbone of the open internet." ;;
    mysql) echo "Philosophy: MySQL put open source at the heart of millions of databases." ;;
    firefox) echo "Philosophy: Firefox is a nonprofit's fight to keep the web open." ;;
    *) echo "Philosophy: Open source software empowers everyone through the four freedoms." ;;
esac