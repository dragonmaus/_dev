#!/bin/sh

set -e

name=${0##*/}
args=Uhtu
usage="Usage: $name [-$args] [-- [dmenu args]]"
help="$usage

  -U   output the URI field (if any)
  -c   copy the output instead of printing it
  -h   display this help
  -t   type the output instead of printing it
  -u   output the user field (if any)
"

filter=1p
mode=show
while getopts $args opt
do
	case $opt in
	(U)
		filter="s/^uri://p"
		;;
	(c)
		mode=copy
		;;
	(h)
		print -n -- "$help"
		exit 0
		;;
	(t)
		mode=type
		;;
	(u)
		filter="s/^user://p"
		;;
	(\?)
		break
		;;
	esac
done
shift `expr $OPTIND - 1`

prefix=${PASSWORD_STORE_DIR:-$HOME/.password-store}
key=`(cd "$prefix" && find . ! \( -name ".[!.]*" -prune \) -type f) | sed -En 's:^\./(.+)\.gpg$:\1:p' | pathsort -u | dmenu "$@"`
test x"$key" = x && exit 1

selection=${PASSWORD_STORE_X_SELECTION:-clipboard}

case $mode in
(copy)
	pass show "$key" | sed -n "$filter" | xclip -i -selection "$selection"
	;;
(show)
	pass show "$key" | sed -n "$filter"
	;;
(type)
	pass show "$key" | sed -n "$filter" | ( IFS= read -r pass && print -n -- "$pass" ) | xdotool type --clearmodifiers --file -
	;;
esac
