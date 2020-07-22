#!/bin/bash

_type=$(nmcli -t -f TYPE,STATE d | awk -F: '{if($2=="connected") print $1}')

if [[ -z $_type ]] ; then
	echo "none"
else
	echo $_type
fi
