#!/bin/fish

set COLORS_FISH "$HOME/.cache/squash/colors.fish"

sed 's/\(.*\)\=\"#\(.*\)\"/set \1 \"\2\"/' "$HOME/.cache/squash/colors" >"$COLORS_FISH"

sed -i 's/\(.*=.*\)\|\(^#.*\)//; /^$/d' "$COLORS_FISH"

source $COLORS_FISH

echo "Set fish colors"

cp "$FISH_THEME" "$HOME/.config/fish/fish_variables"

set fish_color_user $FISH_USER
set fish_color_cwd $FISH_CWD
set -U fish_color_git $FISH_GIT
