#!/usr/bin/bash
# Connect to Mobilinkd

# INIT
. ./config

figlet ${MOBILINKD_FIG}
echo Connecting to ${RFNAME}
sudo rfcomm connect ${RFDEV} ${RFMAC} ${RFCH}

