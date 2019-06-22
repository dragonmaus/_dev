#!/bin/sh

set -e

repo=`(while :; do test -d _darcs && pwd -P && exit; test . -ef .. && exit; cd ..; done)`
test x"$repo" = x && exit 1

file=$repo/_boring
test -f "$file" || touch "$file"

rm -f "$file"{new}

printf '%s\n' "$@" | cat "$file" - | sort -u >"$file"{new}

fsync "$file"{new}
cmp -s "$file" "$file"{new} || cp -f "$file"{new} "$file"
rm -f "$file"{new}
