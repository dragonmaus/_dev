(
	list=$HOME/etc/packages.list
	pkg query -e '%#r == 0' %n | sort -u >"$list"{new}
	if cmp -s "$list" "$list"{new}
	then
		rm -f "$list"{new}
	else
		mv -f "$list"{new} "$list"
	fi
)
