# rbenv

export RBENV_ROOT=/usr/local/var/rbenv

if test $(which rbenv &>/dev/null)
then
  eval "$(rbenv init -)"
fi
