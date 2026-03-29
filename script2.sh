#!/bin/bash
# Script 2: FOSS Package Inspector
# Author: Ambrish Raj | Course: Open Source Software
# checks if my chosen software is installed and shows some info about it

PACKAGE="mysql-server"    # my chosen package - mysql

echo "================================"
echo "  FOSS Package Inspector"
echo "================================"
echo ""

# check if the package is installed using dpkg and grep
if dpkg -l | grep -qw "$PACKAGE"; then
    echo "$PACKAGE is installed."
    echo ""

    # show version and some details
    dpkg -l | grep -w "$PACKAGE" | awk '{print "  Version: " $3}'
    echo ""

    # case statement - prints a one-line philosophy note about the package
    case $PACKAGE in
        mysql-server)
            echo "  MySQL: open source at the heart of millions of apps"
            echo "  It uses a dual license - GPL v2 and Commercial"
            ;;
        apache2)
            echo "  Apache: the web server that built the open internet"
            ;;
        firefox)
            echo "  Firefox: a nonprofit browser fighting for the open web"
            ;;
        vlc)
            echo "  VLC: plays anything — built by students in Paris"
            ;;
        *)
            echo "  No description found for this package."
            ;;
    esac
else
    echo "$PACKAGE is NOT installed."
    echo "You can install it with: sudo apt install $PACKAGE"
fi

echo ""
echo "================================"
