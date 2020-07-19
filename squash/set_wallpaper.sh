#!/bin/bash

source "${HOME}/.cache/squash/colors"

echo "Set wallpaper"

ln -sf "${WALLPAPER_PATH}" "${HOME}/Pictures/backgrounds/current_bg"

${HOME}/.local/autostart/set_nice_background.sh
