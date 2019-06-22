#!/bin/sh

set -e

die() {
	e=$1
	shift
	echo "$@" 1>&2
	exit $e
}

name=`basename "$0" .sh`
args=hv
usage="Usage: $name [-$args] from to"
help="$usage

Recursively copy a directory while preserving permissions.

  -h   display this help
  -v   print files as they are copied
"

args=`getopt -n "$name" -s sh $args "$@"` || die 100 "$usage"
eval set -- "$args"

v=
while test $# -gt 0
do
	case $1 in
	(-h)
		die 0 "$help"
		;;
	(-v)
		v=v
		;;
	(--)
		shift
		break
		;;
	esac
	shift
done

test $# -ge 1 || die 100 "missing required 'from' argument
$usage"
test $# -ge 2 || die 100 "missing required 'to' argument
$usage"

mkdir -p$v "$2"

( cd "$1" && exec find -s . -print0 ) |
( cd "$1" && exec tar -cn -T - -f - --no-fflags --no-xattrs --null ) |
( cd "$2" && exec tar -xp$v -f - )
