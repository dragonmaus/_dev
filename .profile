XDG_CACHE_HOME=${XDG_CACHE_HOME:-$HOME/.cache}
XDG_CONFIG_HOME=${XDG_CONFIG_HOME:-$HOME/.config}
XDG_DATA_HOME=${XDG_DATA_HOME:-$HOME/.local/share}

path=
ifs=$IFS
IFS=:
for d in $HOME/sbin $HOME/bin $HOME/.cabal/bin $HOME/.cargo/bin $HOME/.local/bin $HOME/sbin/ext $HOME/bin/ext $PATH
do
	d=`realpath $d 2>/dev/null || echo $d`
	case :$path: in
	(*:$d:*)
		continue
		;;
	esac
	path=$path:$d
done
IFS=$ifs
path=${path#:}

set -a

PATH=$path

ENV=$XDG_CONFIG_HOME/shell/init.sh

test -r $XDG_CONFIG_HOME/locale.conf && . $XDG_CONFIG_HOME/locale.conf
TZ=America/New_York

EDITOR=`which nvim vim vi 2>/dev/null | ( read line; echo $line )`
PAGER=less; MANPAGER=$PAGER' -s'

BASE16_SHELL_SET_BACKGROUND=false
DARCS_ALWAYS_COLOR=1
DARCS_DO_COLOR_LINES=1
LESS=MRi
LESSHISTFILE=/dev/null
MORE=Ri
RIPGREP_CONFIG_PATH=$XDG_CONFIG_HOME/ripgrep/rgrc
TOP='-atu -s1'

set +a

pgrep -qx -u `id -u` ssh-agent || ssh-agent -s >$XDG_DATA_HOME/ssh/agent.sh
test -r $XDG_DATA_HOME/ssh/agent.sh && . $XDG_DATA_HOME/ssh/agent.sh
