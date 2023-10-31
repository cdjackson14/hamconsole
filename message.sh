#!/usr/bin/bash
# Created by KD9EJQ
# Top message and help display

# INIT
. ./config


# MAIN
clear
echo ' HAM CONSOLE TOOL'
echo '  To move between window panes, press:'
echo "     [CTRL]-[B], then Arrow Key in the direction to move"
echo ""
echo "   Local IP: ${MYIP}          Hostname: ${MYHOST} "
echo ""
ip route | grep default | awk '{print "    http://" $9 ":8080"}'

# Uncomment if you want to Press Any Key
# read -n 1 -s -r
