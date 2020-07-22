#!/bin/bash

dev=$1

addr=$(ip address show $dev | grep "inet" -m 1 | awk '{print $2}' | grep -o -P -e "^([\d]{1,3}\.?){4}")
echo $addr
