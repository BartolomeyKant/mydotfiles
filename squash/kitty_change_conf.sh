#!/bin/bash

KITTY_CONF="${HOME}/.config/kitty/kitty.conf"

source "${HOME}/.cache/squash/colors"

echo "Set kitty colors"

COLOR_ARRAY=($BLK $RED $GRN $YLW $BLU $MAG $CYN $WHT \
                 $BBLK $BRED $BGRN $BYLW $BBLU $BMAG $BCYN $BWHT)

sed -i "s/^foreground[\ ]*#.*/foreground $FG/" "${KITTY_CONF}"
sed -i "s/^background[\ ]*#.*/background $BG/" "${KITTY_CONF}"

for i in {0..15}; do
        sed -i "s/^color$i[\ ]*#.*/color$i ${COLOR_ARRAY[${i}]}/" "${KITTY_CONF}"
done
