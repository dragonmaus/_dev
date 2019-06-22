#!/bin/sh

cd "$HOME"/Pictures/Wallpapers

current=`readlink .current`

random=$current
while test x"$random" = x"$current"
do
	random=`ls *.png digitalblasphemy/.current/*.jpg 2>/dev/null | shuf | sed 1q`
done

ln -fs "$random" .current

test x"$1" = x-s && exec set-wallpaper .current
