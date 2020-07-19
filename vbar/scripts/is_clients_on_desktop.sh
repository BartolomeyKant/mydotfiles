#!/bin/bash

DESK_NUM=$1
CLIENT_LIST="xprop -root _NET_CLIENT_LIST | sed 's/\(.* # \)\|\(\,\)//g'"

# echo $(eval $CLIENT_LIST)
for client in $(eval $CLIENT_LIST) ; do
	DESK_IND=$(xprop -id $client _NET_WM_DESKTOP | awk '{print $3}')
	[[ $DESK_IND = $DESK_NUM ]] && exit 0
done
exit 1
