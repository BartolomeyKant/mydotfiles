#!/bin/bash

[ $(pamixer --get-mute) = "false" ] && echo "on" || echo "off"
