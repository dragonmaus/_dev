#!/bin/sh

pass "$@" | {
	read -r pass
	while IFS=: read -r key value
	do
		case $key in
		(uri)
			host=${value#*://}
			host=${host%%/*}
			;;
		(user)
			user=$value
			;;
		esac
	done
	set --
	test x"$host" = x || set -- "$@" machine "$host"
	test x"$user" = x || set -- "$@" login "$user"
	test x"$pass" = x || set -- "$@" password "$pass"
	printf '%s\n' "$*"
}
