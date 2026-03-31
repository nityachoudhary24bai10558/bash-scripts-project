#!/bin/bash
echo "=========================================="
echo "    Open Source Manifesto Generator       "
echo "=========================================="
echo "Answer three questions to generate your manifesto."
echo ""

read -p "1. Name one open-source tool you use every day: " TOOL
read -p "2. In one word, what does 'freedom' mean to you? " FREEDOM
read -p "3. Name one thing you would build and share freely: " BUILD

DATE=$(date '+%d %B %Y')
OUTPUT="manifesto_$(whoami).txt"

{
echo "--- OPEN SOURCE MANIFESTO ---"
echo "Generated on: $DATE"
echo "By: $(whoami)"
echo ""
echo "I believe that software should be a shared resource for all."
echo "Every day I use $TOOL to solve problems and create things."
echo "To me, freedom in software means $FREEDOM."
echo "In the spirit of open source, I commit to building $BUILD"
echo "and sharing it freely with the world."
echo "Because the best things in technology were never meant to be locked away."
} > "$OUTPUT"

echo "------------------------------------------"
cat "$OUTPUT"
echo "------------------------------------------"
echo "Manifesto saved to $OUTPUT"
echo "=========================================="
# alias manifesto='bash script5.sh'