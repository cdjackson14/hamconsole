#!/usr/bin/bash
# Connect to Mobilinkd

# INIT
. ./config

figlet ${M_FIG}
echo Connecting to ${RFNAME}
sudo rfcomm connect ${RFDEV} ${RFMAC} ${RFCH}

