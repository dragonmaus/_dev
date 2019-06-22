#!/bin/sh
cd "${XDG_DATA_HOME:-$HOME/.local/share}"/creeperworld3
exec ./CW3.x86_64 "$@"
