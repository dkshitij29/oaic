﻿#!/bin/sh

#!/bin/bash

# Define your sudo password
SUDO_PASSWORD="170823"

# Run srsue command
echo $SUDO_PASSWORD | sudo -S srsue \
--rf.device_name=zmq \
--rf.device_args="tx_port=tcp://*:2010,rx_port=tcp://localhost:2300,id=ue,base_srate=23.04e6" \
--usim.algo=xor \
--usim.imsi=001010123456789 \
--usim.k=00112233445566778899aabbccddeeff \
--usim.imei=353490069873310 \
--log.all_level=warn \
--log.filename=stdout \
--gw.netns=ue1

