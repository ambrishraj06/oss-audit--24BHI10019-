#!/bin/bash
# Script 1: System Identity Report
# Author: Ambrish Raj | Course: Open Source Software
# this script just shows some basic info about the system like a welcome screen

# --- Variables ---
STUDENT_NAME="Ambrish Raj"         # put your name here
SOFTWARE_CHOICE="MySQL"          # my chosen software for the project

# --- System info ---
KERNEL=$(uname -r)
USER_NAME=$(whoami)
HOME_DIR=$HOME
UPTIME=$(uptime -p)
DATE_NOW=$(date)
DISTRO=$(lsb_release -d | cut -f2)   # gets the distro name
HOSTNAME=$(hostname)

# --- Display ---
echo "================================"
echo "  Open Source Audit — $STUDENT_NAME"
echo "================================"
echo ""
echo "Hostname    : $HOSTNAME"
echo "Distro      : $DISTRO"
echo "Kernel      : $KERNEL"
echo "User        : $USER_NAME"
echo "Home Dir    : $HOME_DIR"
echo "Uptime      : $UPTIME"
echo "Date/Time   : $DATE_NOW"
echo ""
echo "Software    : $SOFTWARE_CHOICE"
echo "OS License  : GPL v2 (Linux kernel is licensed under GPL v2)"
echo ""
echo "================================"
echo "  Report done."
echo "================================"
