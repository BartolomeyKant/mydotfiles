#!/bin/bash

CURR_DESK="xprop  -root -spy _NET_CURRENT_DESKTOP _NET_CLIENT_LIST"

$CURR_DESK | while read d ; do
	echo 1
done
