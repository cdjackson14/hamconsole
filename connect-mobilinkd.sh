#!/usr/bin/bash
# Created by KD9EJQ
# Connect to Mobilinkd

# INIT
. ./config

figlet ${M_FIG}
echo Connecting to ${RFNAME}
sudo rfcomm connect ${RFDEV} ${RFMAC} ${RFCH}

