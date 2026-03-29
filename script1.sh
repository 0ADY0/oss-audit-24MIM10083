#!/bin/bash

#Script 1: System Identity Report
#Author: ADHYTHYAN KS [24MIM10083]
#Course: Open Source Software

STUDENT_NAME="ADHYTHYAN K S"
SOFTWARE_CHOICE="Python"

KERNEL=$(uname -r)
USER_NAME=$(whoami)
UPTIME=$(uptime -p)

DISTRO=$(cat /etc/os-release | grep PRETTY_NAME | cut -d= -f2 | tr -d '"')
HOME_DIR=$HOME
DATETIME=$(date)

echo "  $STUDENT_NAME's Open Source Audit  "
echo "Target Software : $SOFTWARE_CHOICE"
echo "Kernel          : $KERNEL"
echo "User            : $USER_NAME"
echo "Home Directory  : $HOME_DIR"
echo "Distribution    : $DISTRO"
echo "Uptime          : $UPTIME"
echo "Date & Time     : $DATETIME"
echo "OS License      : This Linux system is primarily distributed under the GNU GPL v2 license."
