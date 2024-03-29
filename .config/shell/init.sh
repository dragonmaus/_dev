shell=`basename "$SHELL"`
shell=${shell:-sh}

shell_cache=${XDG_CACHE_HOME:-$HOME/.cache}/shell
shell_config=${XDG_CONFIG_HOME:-$HOME/.config}/shell
shell_data=${XDG_DATA_HOME:-$HOME/.local/share}/shell
mkdir -p $shell_cache $shell_config $shell_data

case $shell in
(sh)
	load() {
		test -r $shell_config/$1.sh && . $shell_config/$1.sh
	}
	;;
(*)
	load() {
		for f in $shell_config/$1.$shell $shell_config/$1.sh
		do
			if test -r $f
			then
				. $f
				return $?
			fi
		done
	}
	;;
esac

load aliases
load exports
load functions
load history
load options
load prompt
( load theme )
load traps

unset -f load
unset f shell shell_cache shell_config shell_data
