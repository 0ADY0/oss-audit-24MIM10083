#!/bin/bash
#Script 5: Open Source Manifesto Generator
#Author: Adhythyan K S
#Course: Open Source Software

echo "Answer three questions to generate your manifesto."
echo "--------------------------------------------------"

read -p "1. Name one open-source tool you use every day: " TOOL
read -p "2. In one word, what does 'freedom' mean to you? " FREEDOM
read -p "3. Name one thing you would build and share freely: " BUILD

DATE=$(date +'%d %B %Y')
OUTPUT="manifesto_$(whoami).txt"

# Using > for the first line to create/overwrite the file, and >> to append the rest
echo "=====================================" > "$OUTPUT"
echo "      MY OPEN SOURCE MANIFESTO       " >> "$OUTPUT"
echo "=====================================" >> "$OUTPUT"
echo "Date: $DATE" >> "$OUTPUT"
echo "" >> "$OUTPUT"
echo "I believe that the true essence of software is $FREEDOM." >> "$OUTPUT"
echo "By relying on tools like $TOOL every day, I experience the power of a global community." >> "$OUTPUT"
echo "In that spirit, I pledge to one day build and share $BUILD so that others can learn, modify, and improve it." >> "$OUTPUT"

echo ""
echo "Manifesto successfully saved to $OUTPUT!"
echo "Here is what it says:"
echo "--------------------------------------------------"

cat "$OUTPUT"
