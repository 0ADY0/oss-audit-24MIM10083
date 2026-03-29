#!/bin/bash
#Script 2: FOSS Package Inspector
#Author: Adhythyan K S
#Course: Open Source Software

PACKAGE="python3"

echo "Inspecting system for FOSS package: $PACKAGE..."
echo "------------------------------------------------"
if dpkg -s $PACKAGE &> /dev/null; then
    # Grab just the exact version number
    VERSION=$(dpkg -s $PACKAGE | grep '^Version:' | awk '{print $2}')
    echo "$PACKAGE is installed."
    echo "Version: $VERSION"
else
    echo "$PACKAGE is NOT installed."
fi

echo "------------------------------------------------"
case $PACKAGE in
    python3) 
        echo "Python: A language representing simplicity, readability, and open collaboration." 
        ;;
    bash) 
        echo "Bash: The shell that empowers users with direct control over their system." 
        ;;
    apache2 | httpd) 
        echo "Apache: The open-source web server that built the modern internet." 
        ;;
    vlc) 
        echo "VLC: A free multimedia player that proves students can build world-class software." 
        ;;
    *) 
        echo "This software contributes to the open-source ecosystem." 
        ;;
esac
