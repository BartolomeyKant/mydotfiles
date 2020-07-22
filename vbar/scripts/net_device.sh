#!/bin/bash

dev=$(nmcli -t -f DEVICE,STATE d | awk -F: '{if($2=="connected") print $1}')

if [[ -z $dev ]] ; then
	echo "lo"
else
	echo $dev
fi
