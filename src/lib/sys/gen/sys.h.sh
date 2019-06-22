#!/bin/sh

echo() {
	printf '%s\n' "$*"
}

echo '#ifndef SYS_H'
echo '#define SYS_H'
echo

if test -r sys.h.pre
then
	cat sys.h.pre
fi

while read -r number name prototype
do
	echo "$prototype"
	test x"$number" = x- && continue
	{
		echo "%include 'core.m'"
		echo
		echo '	section	.text'
		echo "proc $name"
		echo "	sinvoke	$number	; syscall $name"
		echo 'endproc'
	} >"$name".S{new}
	chmod 444 "$name".S{new}
	cmp -s "$name".S{new} "$name".S || mv -f "$name".S{new} "$name".S
	rm -f "$name".S{new}
done <sys.h.list

if test -r sys.h.post
then
	cat sys.h.post
fi

echo
echo '#endif'
