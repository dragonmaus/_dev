echo() (
  p='%s\n'
  while test $# -gt 0; do
    case $1 in
      -n)
        p='%s'
        ;;
      --)
        shift
        break
        ;;
      *)
        break
        ;;
    esac
    shift
  done
  printf "$p" "$*"
)
warn() {
  echo ${1+"$@"} 1>&2
}
die() {
  r=$1
  shift 1
  warn ${1+"$@"}
  exit $r
}
