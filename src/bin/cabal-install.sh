#!/bin/sh

set -e

warn() {
	printf '%s\n' "$*" 1>&2
}

root=`mktemp -d`
trap -- "rm -fr '$root'" EXIT INT KILL TERM

bindir=$HOME/lang/haskell/bin
prefix=$HOME/.cabal
mkdir -pv "$bindir"
mkdir -pv "$prefix"

cd "$root"

for spec do
	warn "Fetching package $spec..."
	dir=`cabal get "$spec" | tee /dev/fd/2 | sed -n 's/^Unpacking to //;s/\/$//p'`

	(
		cd "$dir"

		cabal sandbox init

		warn 'Installing dependencies...'
		cabal install --only-dependencies

		warn 'Installing package...'
		cabal install --prefix="$prefix" --bindir="$bindir"

		warn 'Cleaning up...'
	)
	rm -fr "$dir"
done
