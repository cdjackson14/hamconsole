#!/usr/bin/bash
# Created by KD9EJQ
# Run Pat after Direwolf has successfully started

# INIT
. ./config

# MAIN
figlet ${P_FIG} 
# Check to see if the RF device has been connected
while [ ! -e ${RFDEV} ]; do sleep .5; done

# Connect KISS
sudo kissattach ${RFDEV} ${AXPORTS}

# Start Pat with web interface
pat http

# Clean up after being done
sudo rfcomm release ${RFDEV}
sudo killall rfcomm
sudo killall kissattach

