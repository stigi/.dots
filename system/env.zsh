if test $(which subl &>/dev/null)
then
  export EDITOR="subl -w"
else
  export EDITOR="vim"
fi
