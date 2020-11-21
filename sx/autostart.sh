#!/bin/bash

work_dir="$HOME/.config/sx/autostart.d"
for f in $work_dir/*.sh ; do
	[ -x $f ] && source $f &
done
