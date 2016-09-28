#!/bin/bash

if [ "$1" == ""]
then 
	echo "Usage ./ping.sh [network]"
	echo "Example ping.sh 192.168.1.1"
else 
	
	for ip in {1..254}; do ping -c 1 $1.$ip | grep "PING" | cut -d " " -f 2; done
fi