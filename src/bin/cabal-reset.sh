#!/bin/sh

set -e

cabal=$HOME/.cabal
cache=$HOME/.cache/cabal
ghc=$HOME/.ghc

etc=$HOME/etc

rm -fr "$cabal" "$ghc"
test x"$1" = x-f && rm -fr "$cache"
test -d "$etc"/cabal && dircp "$etc"/cabal "$cabal"
test -d "$etc"/ghc && dircp "$etc"/ghc "$ghc"

cabal-repo reinit
cabal-world update
