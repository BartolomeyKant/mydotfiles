#!/bin/bash

SEL_DESK=$1
CURR_DESK=$(xprop -root _NET_CURRENT_DESKTOP | awk '{print $3}')

[[ $CURR_DESK = $SEL_DESK ]] && exit 0 || exit 1
