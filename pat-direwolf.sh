#!/usr/bin/bash
# Created by KD9EJQ
# Run Pat after Direwolf has successfully started

# INIT
. ./config

# MAIN
figlet ${P_FIG} 

# Check to see if the Direwolf symbolic link is active before continuing on...
while [ ! -L ${KISSTMP} ]; do sleep .5; done

# Connect KISS
sudo kissattach ${KISSTMP} ${AXPORT}
sudo kissparms -c 1 -p ${AXPORT}

# Start Pat with web interface
pat http

# Clean up after being done
sudo rm ${KISSTMP}
sudo killall kissattach

