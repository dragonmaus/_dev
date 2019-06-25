#!/bin/sh

echo() {
	printf '%s\n' "$*"
}

{
	echo function z {
	cat "$@"
	echo
	echo }
	echo \\\\builtin typeset -f z
} | mksh | sed '1d;$d;s/^	//;s/ $//'
