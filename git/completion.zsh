unalias g &>/dev/null

g () {
  if [ $# -eq 0 ]
  then
    git status -sb
  else
    git "$@"
  fi
}
compdef g=git
