#!/bin/sh

u=`id -u`
g=`id -g`
t=`mktemp -d`
trap "rm -fr '$t'" EXIT
chown $u:$g "$t"

pijul init "$t"
mv -nv "$t"/.pijul "${1:-.}"
