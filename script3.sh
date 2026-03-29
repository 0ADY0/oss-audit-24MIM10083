#!/bin/bash
#Script 3: Disk and Permission Auditor
#Author: Adhythyan K S
#Course: Open Source Software

DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

echo "=============================="
echo "    Directory Audit Report    "
echo "=============================="

for DIR in "${DIRS[@]}"; do
    # Check if the directory actually exists first
    if [ -d "$DIR" ]; then
        # Extract permissions and owner
        PERMS=$(ls -ld "$DIR" | awk '{print $1, "(Owner: " $3 ")"}')
        SIZE=$(du -sh "$DIR" 2>/dev/null | cut -f1)
      
        echo "$DIR => Permissions: $PERMS | Size: $SIZE"
    else
        echo "$DIR does not exist on this system"
    fi
done

echo "------------------------------"
echo "Software Config Check (Python)"
echo "------------------------------"

CONFIG_DIR="/etc/python3"

if [ -d "$CONFIG_DIR" ]; then
    CONFIG_PERMS=$(ls -ld "$CONFIG_DIR" | awk '{print $1, "(Owner: " $3 ")"}')
    echo "Found Python config at: $CONFIG_DIR"
    echo "Permissions: $CONFIG_PERMS"
else
    echo "Config directory not found: $CONFIG_DIR"
fi
