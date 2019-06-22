#!/bin/sh

set -e

file=${XDG_DATA_HOME:-$HOME/.local/share}/x.display
test -r "$file" || exit 1

display=`head -1 <"$file"`

exec env "DISPLAY=$display" "$@"
