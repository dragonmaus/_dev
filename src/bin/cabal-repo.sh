#!/bin/sh

set -e

warn() {
	printf '%s\n' "$*" 1>&2
}

root=$HOME/.hackage

cmd=$1
shift

case $cmd in
(install)
	mkdir -pv "$root"/repo/package
	for file do
		warn "Installing package $file..."
		cp -f "$file" "$root"/repo/package
	done
	exec "$0" update
	;;
(reinit)
	warn 'Reinitializing repository...'
	find "$root" -not \( -path "$root"/repo/package -prune \) -print0 | sort -rz | xargs -0 rm -df >/dev/null 2>&1 || :
	mkdir -pv "$root"/repo/package
	hackage-repo-tool create-keys --keys "$root"/keys
	hackage-repo-tool bootstrap --keys "$root"/keys --repo "$root"/repo
	hackage-repo-tool create-mirrors --keys "$root"/keys -o "$root"/repo/mirrors.json file:"$root"/repo/
	exec "$0" update
	;;
(update)
	exec hackage-repo-tool update --keys "$root"/keys --repo "$root"/repo
	;;
esac
