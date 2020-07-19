#!/bin/bash

# change color theme for VSCode
# specify VSCODE_THEME in theme file

source "${HOME}/.cache/squash/colors"

echo "Change vscode themes"

VSCODE_SETTINGS="${HOME}/.config/Code - OSS/User/settings.json"

sed -i "s/\(\"workbench.colorTheme\"\):[ ]*\(\".*\"\)\(,*\)/\1: \"${VSCODE_THEME}\"\3/" "${VSCODE_SETTINGS}"
